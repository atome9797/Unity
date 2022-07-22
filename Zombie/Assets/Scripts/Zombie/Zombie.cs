using System.Collections;
using UnityEngine;
using UnityEngine.AI; // AI, 내비게이션 시스템 관련 코드 가져오기

// 좀비 AI 구현
public class Zombie : LivingEntity
{
    public LayerMask TargetLayer; // 추적 대상 레이어
    public ParticleSystem HitEffect; // 피격 시 재생할 파티클 효과
    public AudioClip DeathSound; // 사망 시 재생할 소리
    public AudioClip HitSound; // 피격 시 재생할 소리
    public float Damage = 20f; // 공격력
    public float AttackCoolTime = 0.5f; // 공격 간격

    private LivingEntity _target; // 추적 대상

    private NavMeshAgent _navMeshAgent; // 경로 계산 AI 에이전트
    private Animator _animator; // 애니메이터 컴포넌트
    private AudioSource _audioSource; // 오디오 소스 컴포넌트
    private Renderer _renderer; // 렌더러 컴포넌트

    private float _lastAttackTime; // 마지막 공격 시점
    private Collider[] _targetCandidates = new Collider[5];
    private int _targetCandidateCount;


    // 추적할 대상이 존재하는지 알려주는 프로퍼티
    private bool _hasTargetFound 
    {
        get
        {
            // 추적할 대상이 존재하고, 대상이 사망하지 않았다면 true
            if (_target != null && _target.IsDead == false)
            {
                return true;
            }

            // 그렇지 않다면 false
            return false;
        }
    }

    private void Awake() {
        // 초기화
        _navMeshAgent = GetComponent<NavMeshAgent>();
        _animator = GetComponent<Animator>();
        _audioSource = GetComponent<AudioSource>();
        _renderer = GetComponentInChildren<Renderer>();
    }

    // 좀비 AI의 초기 스펙을 결정하는 셋업 메서드
    public void Setup(float newHealth, float newDamage, float newSpeed, Color skinColor) {
        InitialHealth = newHealth;
        Damage = newDamage;
        _navMeshAgent.speed = newSpeed;
        _renderer.material.color = skinColor;
    }

    private void Start() {
        // 게임 오브젝트 활성화와 동시에 AI의 추적 루틴 시작
        StartCoroutine(UpdatePath());
    }

    private void Update() {
        // 추적 대상의 존재 여부에 따라 다른 애니메이션 재생
        _animator.SetBool(ZombieAnimID.HasTarget, _hasTargetFound);
    }

    // 주기적으로 추적할 대상의 위치를 찾아 경로 갱신
    private IEnumerator UpdatePath() {
        // 살아 있는 동안 무한 루프
        while (IsDead == false)
        {
            if(_hasTargetFound)
            {
                _navMeshAgent.isStopped = false;
                //타겟한테 가야함
                _navMeshAgent.SetDestination(_target.transform.position);
            }
            else
            {
                _navMeshAgent.isStopped = true;

                _targetCandidateCount = Physics.OverlapSphereNonAlloc(transform.position, 7f, _targetCandidates, TargetLayer);

                for(int i = 0; i < _targetCandidateCount; ++i)
                {
                    Collider targetCandidate = _targetCandidates[i];

                    LivingEntity livingEntity = targetCandidate.GetComponent<LivingEntity>();

                    Debug.Assert(livingEntity != null);

                    if (livingEntity.IsDead == false)
                    {
                        _target = livingEntity;
                        break;
                    }
                }

            }

            // 0.25초 주기로 처리 반복
            yield return new WaitForSeconds(0.25f);
        }
    }

    // 데미지를 입었을 때 실행할 처리
    public override void OnDamage(float damage, Vector3 hitPoint, Vector3 hitNormal) {
        // LivingEntity의 OnDamage()를 실행하여 데미지 적용
        base.OnDamage(damage, hitPoint, hitNormal);

        if(IsDead == false)
        {
            _audioSource.PlayOneShot(HitSound);

            HitEffect.transform.position = hitPoint;
            HitEffect.transform.rotation = Quaternion.LookRotation(hitNormal);
            HitEffect.Play();
        }
    }

    // 사망 처리
    public override void Die() 
    {
        // LivingEntity의 Die()를 실행하여 기본 사망 처리 실행
        base.Die();

        //1. 죽을때 사운드 재생
        _audioSource.PlayOneShot(DeathSound);
        //2. 애니메이션 트리거 설정
        _animator.SetTrigger(ZombieAnimID.Die);

        //3. 네비메시 비활성화
        _navMeshAgent.isStopped = true;
        _navMeshAgent.enabled = false;
    }

    private void OnTriggerStay(Collider other) 
    {
        //공격이 가능한지 판단
        //1. 내가 살아있는지?
        //2. 공격 쿨타임 지났는지?
        if(IsDead == false && Time.time >= _lastAttackTime + AttackCoolTime)
        {
            // 트리거 충돌한 상대방 게임 오브젝트가 추적 대상이라면 공격 실행
            LivingEntity livingEntity = other.GetComponent<LivingEntity>();

            if (livingEntity == _target)
            {
                Vector3 hitPosition = other.ClosestPoint(transform.position); //가장 가까운 충돌기의 점입니다.
                Vector3 hitNormal = transform.position - other.transform.position; //거리 벡터
                //플레이어 데미지 입음
                livingEntity.OnDamage(Damage, hitPosition, hitNormal);

                _lastAttackTime = Time.time;
            }
        }
    }
}