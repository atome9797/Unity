using UnityEngine;

// 플레이어 캐릭터를 사용자 입력에 따라 움직이는 스크립트
public class PlayerMovement : MonoBehaviour {
    
    [SerializeField]
    private float MoveSpeed = 5f; // 앞뒤 움직임의 속도
    public float RotateSpeed = 180f; // 좌우 회전 속도


    private PlayerInput _input; // 플레이어 입력을 알려주는 컴포넌트
    private Rigidbody _rigidbody; // 플레이어 캐릭터의 리지드바디
    private Animator _animator; // 플레이어 캐릭터의 애니메이터


    private void Awake()
    {
        _input = GetComponent<PlayerInput>();
        _rigidbody = GetComponent<Rigidbody>();
        _animator = GetComponent<Animator>();   
    }

    // FixedUpdate는 물리 갱신 주기에 맞춰 실행됨
    private void FixedUpdate() {
        // 물리 갱신 주기마다 움직임, 회전, 애니메이션 처리 실행
        move();
        rotate();

        _animator.SetFloat(PlayerAnimID.Move, _input.MoveDirection);
    }

    // 입력값에 따라 캐릭터를 앞뒤로 움직임
    private void move()
    {                   //속력(MoveSpeed) * 시간(deltaTime)  => 캐릭터 기준으로 앞 혹은 뒤를 이동 
        //거리 = 속력 * 시간
        float movementAmount = MoveSpeed * Time.fixedDeltaTime;
        //방향은 캐릭터 기준이다.
        Vector3 direction = _input.MoveDirection * transform.forward;
        Vector3 offset = movementAmount * direction; //벡터 연산이 적도록 곱셈을 작성한다.

        _rigidbody.MovePosition(_rigidbody.position + offset);
    }

    // 입력값에 따라 캐릭터를 좌우로 회전
    private void rotate() {

        float rotationAmount = _input.RotateDirection * RotateSpeed * Time.fixedDeltaTime;
        Quaternion deltaRotation = Quaternion.Euler(0f, rotationAmount, 0f);
        _rigidbody.MoveRotation(_rigidbody.rotation * deltaRotation);
    }
}