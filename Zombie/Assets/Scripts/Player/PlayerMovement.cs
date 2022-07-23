using UnityEngine;
using UnityEngine.AI; // 내비메쉬 관련 코드

// 플레이어 캐릭터를 사용자 입력에 따라 움직이는 스크립트
public class PlayerMovement : MonoBehaviour {
    
    [SerializeField]
    private float MoveSpeed = 5f; // 앞뒤 움직임의 속도
    public float RotateSpeed = 180f; // 좌우 회전 속도


    private PlayerInput _input; // 플레이어 입력을 알려주는 컴포넌트
    private Rigidbody _rigidbody; // 플레이어 캐릭터의 리지드바디
    private Animator _animator; // 플레이어 캐릭터의 애니메이터
    private NavMeshAgent _navMeshAgent;

    private void Awake()
    {
        _input = GetComponent<PlayerInput>();
        _rigidbody = GetComponent<Rigidbody>();
        _animator = GetComponent<Animator>();
        _navMeshAgent = GetComponent<NavMeshAgent>();
    }

    private void Start()
    {
        _navMeshAgent.speed = MoveSpeed;
        _navMeshAgent.angularSpeed = RotateSpeed;
    }

    // FixedUpdate는 물리 갱신 주기에 맞춰 실행됨
    private void FixedUpdate() {
        // 물리 갱신 주기마다 움직임, 회전, 애니메이션 처리 실행
        move();
        rotate();

        if(_navMeshAgent.isStopped)
        {
            _animator.SetFloat(PlayerAnimID.Move, _input.MoveDirection);
        }
        else 
        {
            _animator.SetFloat(PlayerAnimID.Move, 1f);
        }
    }


    // 입력값에 따라 캐릭터를 앞뒤로 움직임
    private void move()
    {
        Debug.Log("여기야");
        if (_input.CanMove)
        {
            Ray mouseRay = Camera.main.ScreenPointToRay(_input.MousePosition);

            RaycastHit hit;
            bool isHit = Physics.Raycast(mouseRay, out hit, 100f);
            if(isHit)
            {
                Debug.Log("여기야");
                NavMeshHit meshHit;
                if(false == NavMesh.SamplePosition(hit.point, out meshHit, 2f, NavMesh.AllAreas))
                {
                    return;
                }

                _navMeshAgent.isStopped = false;
                _navMeshAgent.SetDestination(meshHit.position);


            }
        }
        else
        {
            stopAutoPathfinding();
            //속력(MoveSpeed) * 시간(deltaTime)  => 캐릭터 기준으로 앞 혹은 뒤를 이동 
            //거리 = 속력 * 시간
            float movementAmount = MoveSpeed * Time.fixedDeltaTime;
            //방향은 캐릭터 기준이다.
            Vector3 direction = _input.MoveDirection * transform.forward;
            Vector3 offset = movementAmount * direction; //벡터 연산이 적도록 곱셈을 작성한다.

            _rigidbody.MovePosition(_rigidbody.position + offset);

        }
    }

    // 입력값에 따라 캐릭터를 좌우로 회전
    private void rotate() 
    {
        float rotateDirection = _input.RotateDirection;

        if(rotateDirection != 0f)
        {
            stopAutoPathfinding();
            float rotationAmount = rotateDirection * RotateSpeed * Time.fixedDeltaTime;
            Quaternion deltaRotation = Quaternion.Euler(0f, rotationAmount, 0f);
            _rigidbody.MoveRotation(_rigidbody.rotation * deltaRotation);
        }


    }

    private void stopAutoPathfinding()
    {
        _navMeshAgent.isStopped = true;
        _navMeshAgent.velocity  = Vector3.zero;
    }
}