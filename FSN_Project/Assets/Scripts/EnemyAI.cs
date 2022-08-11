using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;


public enum EnemyState
{
    None,       // 
    Idle,       // 대기
    Walk,       // 순찰 patrol
    Run,        // 추적 trace
    Attack,     // 공격
    KnockBack,   // 피격 damaged
    Hide        // 은신
}

public class EnemyAI : MonoBehaviour
{

    public UnityEvent onEvent = new UnityEvent();


    public EnemyState state;
    public EnemyState prevState = EnemyState.None;

    Animator animator;

    // 이동관련
    Vector3 targetPos;
    float moveSpeed = 1f;
    float rotationSpeed = 1f;

    // 적 탐지 관련
    public GameObject target;
    bool isFindEnemy = false;
    Camera eye;
    Plane[] eyePlanes;

    //공격 충돌 관련
    GameObject weaponCollider;

    //은신
    DissolveController dissovceController;

    //부딪친 지점을 반환
    Transform HitTransform;

    public void Activate()
    {
        //transform 위치로 이동하게 함
    }

    private void OnEnable()
    {
        onEvent.AddListener(Activate);
    }


    //플레이어와 충돌했을때 옵저버 패턴 발동시켜 , 충동 시점으로 이동하도록 설정하기
    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player")
        {
            HitTransform = other.transform;
            onEvent.Invoke(); //이벤트 발동시킴
        }
    }


    private void Awake()
    {
        //Json 데이터 파일 생성
        DataManager.Instance.SaveGameData();
        //클래스 인스턴스 생성 => 이때 싱글톤 객체 생성됨 => 이때 CSV 파일 읽어옴
        MonsterData data = DataManager.Instance.GetMonsterData(2);
        moveSpeed = data.moveSpeed;
        rotationSpeed = data.rotationSpeed;
    }


    // Start is called before the first frame update
    void Start()
    {
        dissovceController = GetComponentInChildren<DissolveController>();
        dissovceController.ChangeState(DissolveController.State.Hide_Off);
        animator = GetComponent<Animator>();
        eye = transform.GetComponentInChildren<Camera>();

        //sphereColliders를 같는 게임 오브젝트를 불러온다.
        SphereCollider[] sphereColliders = GetComponentsInChildren<SphereCollider>();
        foreach(var sphereCollider in sphereColliders)
        {
            //sphereCollider.name는 sphereCollider.gameObject.name의 축약형
            //오브젝트의 이름을 받게됨
            if (sphereCollider.name == "WeaponCollider")
            {
                weaponCollider = sphereCollider.gameObject;
                break;
            }
        }

        weaponCollider.SetActive(false);
        ChangeState(EnemyState.Idle);
    }

    // Update is called once per frame
    void Update()
    {
        switch (state)
        {
            case EnemyState.Idle: UpdateIdle(); break;
            case EnemyState.Walk: UpdateWalk(); break;
            case EnemyState.Run: UpdateRun(); break;
            case EnemyState.Attack: UpdateAttack(); break;
            case EnemyState.KnockBack: UpdateKnockBack(); break;
            case EnemyState.Hide: UpdateHide(); break;
        }
    }

    #region UpdateDetail
    // 매 프레임마다 수행해야 하는 동작 (상태가 바뀔 때 마다)
    void UpdateIdle()
    {

    }
    void UpdateWalk()
    {
        if (IsFindEnemy())
        {
            ChangeState(EnemyState.Run);
            return;
        }

        // 목적지까지 이동하는 코드
        Vector3 dir = targetPos - transform.position;
        if (dir.sqrMagnitude <= 0.2f)
        {
            ChangeState(EnemyState.Idle);
            return;
        }

        var targetRotation = Quaternion.LookRotation(targetPos - transform.position, Vector3.up);
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, rotationSpeed * Time.deltaTime);

        transform.position += transform.forward * moveSpeed * Time.deltaTime;
    }
    void UpdateRun()
    {
        // 목적지까지 이동하는 코드
        Vector3 dir = targetPos - transform.position;
        //Debug.Log("타겟거리 : " + dir.magnitude);
        if (dir.magnitude <= 2.0f)
        {
            ChangeState(EnemyState.Attack);
            return;
        }

        var targetRotation = Quaternion.LookRotation(targetPos - transform.position, Vector3.up);
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, rotationSpeed * 2f * Time.deltaTime);

        transform.position += transform.forward * moveSpeed * 2f * Time.deltaTime;
    }
    void UpdateAttack()
    {

    }
    void UpdateKnockBack()
    {

    }
    
    void UpdateHide()
    {

    }
    #endregion


    #region CoroutineDetail
    IEnumerator CoroutineIdle()
    {
        // 한번만 수행해야 하는 동작 (상태가 바뀔 때 마다)
        Debug.Log("대기 상태 시작");
        animator.SetBool("IsIdle", true);

        while (true)
        {
            yield return new WaitForSeconds(2f);
            // 시간마다 수행해야 하는 동작 (상태가 바뀔 때 마다)
            ChangeState(EnemyState.Hide);
            yield break;
        }
    }
    IEnumerator CoroutineWalk()
    {
        // 한번만 수행해야 하는 동작 (상태가 바뀔 때 마다)
        Debug.Log("순찰 상태 시작");
        animator.SetBool("IsWalk", true);
        dissovceController.ChangeState(DissolveController.State.Hide_Off);

        // 목적지 설정
        targetPos = transform.position + new Vector3(Random.Range(-7f, 7f), 0f, Random.Range(-7f, 7f));

        while (true)
        {
            yield return new WaitForSeconds(10f);
            // 시간마다 수행해야 하는 동작 (상태가 바뀔 때 마다)
            ChangeState(EnemyState.Idle);
        }
    }
    IEnumerator CoroutineRun()
    {
        // 한번만 수행해야 하는 동작 (상태가 바뀔 때 마다)
        Debug.Log("추적 상태 시작");
        animator.SetBool("IsRun", true);
        targetPos = target.transform.position;

        dissovceController.ChangeState(DissolveController.State.Hide_Off);

        while (true)
        {
            yield return new WaitForSeconds(5f);
            // 시간마다 수행해야 하는 동작 (상태가 바뀔 때 마다)

        }
    }
    IEnumerator CoroutineAttack()
    {
        // 한번만 수행해야 하는 동작 (상태가 바뀔 때 마다)
        animator.SetTrigger("IsAttack");

        yield return new WaitForSeconds(1f);
        ChangeState(EnemyState.Idle);
        yield break;
    }
    IEnumerator CoroutineKnockBack()
    {
        // 한번만 수행해야 하는 동작 (상태가 바뀔 때 마다)

        while (true)
        {
            yield return new WaitForSeconds(2f);
            // 시간마다 수행해야 하는 동작 (상태가 바뀔 때 마다)

        }
    } 
    
    IEnumerator CoroutineHide()
    {
        // 한번만 수행해야 하는 동작 (상태가 바뀔 때 마다)
        dissovceController.ChangeState(DissolveController.State.Hide_On);

        yield return new WaitForSeconds(3f);
        // 시간마다 수행해야 하는 동작 (상태가 바뀔 때 마다)
        ChangeState(EnemyState.Walk);
        yield break;
    }
    #endregion

    void ChangeState(EnemyState nextState)
    {
        if (prevState == nextState) return;

        StopAllCoroutines();

        prevState = state;
        state = nextState;
        animator.SetBool("IsIdle", false);
        animator.SetBool("IsWalk", false);
        animator.SetBool("IsRun", false);
        animator.SetBool("IsAttack", false);
        animator.SetBool("IsKnockBack", false);




        switch (state)
        {
            case EnemyState.Idle: StartCoroutine(CoroutineIdle()); break;
            case EnemyState.Walk: StartCoroutine(CoroutineWalk()); break;
            case EnemyState.Run: StartCoroutine(CoroutineRun()); break;
            case EnemyState.Attack: StartCoroutine(CoroutineAttack()); break;
            case EnemyState.KnockBack: StartCoroutine(CoroutineKnockBack()); break;
            case EnemyState.Hide: StartCoroutine(CoroutineHide()); break;
        }
    }

    bool IsFindEnemy()
    {
        if (!target.activeSelf) return false;

        Bounds targetBounds = target.GetComponentInChildren<SkinnedMeshRenderer>().bounds;
        eyePlanes = GeometryUtility.CalculateFrustumPlanes(eye);
        isFindEnemy = GeometryUtility.TestPlanesAABB(eyePlanes, targetBounds);

        return isFindEnemy;
    }

    void OnAttack(AnimationEvent animationEvent)
    {
        Debug.Log("OnAttack : " + animationEvent.intParameter);
        
        if(animationEvent.intParameter == 1)
        {
            weaponCollider.SetActive(true);
        }
        else
        {
            weaponCollider.SetActive(false);
        }
    }
}
