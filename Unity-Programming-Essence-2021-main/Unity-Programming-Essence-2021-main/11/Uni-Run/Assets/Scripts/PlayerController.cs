using UnityEngine;

// PlayerController는 플레이어 캐릭터로서 Player 게임 오브젝트를 제어한다.
public class PlayerController : MonoBehaviour {
   public AudioClip deathClip; // 사망시 재생할 오디오 클립
   public float jumpForce = 700f; // 점프 힘

   private int jumpCount = 0; // 누적 점프 횟수
   private bool isGrounded = false; // 바닥에 닿았는지 나타냄
   private bool isDead = false; // 사망 상태


   //private으로 선언한후 컴포넌트들을 가져옴 
   private Rigidbody2D playerRigidbody; // 사용할 리지드바디 컴포넌트
   private Animator animator; // 사용할 애니메이터 컴포넌트
   private AudioSource playerAudio; // 사용할 오디오 소스 컴포넌트

   private void Start() {
       // 초기화
       // 게임 오브젝트로부터 사용할 컴포넌트들을 가져와 변수에 할당
        playerRigidbody = GetComponent<Rigidbody2D>();
        animator = GetComponent<Animator>();
        playerAudio = GetComponent<AudioSource>();
   }

   private void Update() {
       // 사용자 입력을 감지하고 점프하는 처리
        if(isDead)
        {
            //사망 시 처리를 더 이상 진행하지 않고 종료
            return;
        }

        //마우스 왼쪽 버튼을 눌렀으며 && 최대 점프 횟수(2)에 도달하지 않았다면
        if (Input.GetMouseButtonDown(0) && jumpCount < 2)
        {
            //점프 횟수 증가
            jumpCount++;
            //점프 직전에 속도를 순간적으로 제로 (0,0)으로 변경
            playerRigidbody.velocity = Vector3.zero;
            //리지드 바디에 위쪽으로 힘 주기
            playerRigidbody.AddForce(new Vector2(0, jumpForce));
            //오디오 소스 재생
            playerAudio.Play();
        }
        // playerRigidbody.velocity.y > 0 낙하 상태시 속도 줄이는것을 막기위해 사용
        else if (Input.GetMouseButtonUp(0) && playerRigidbody.velocity.y > 0) //뛴 상태일때
        {
            //마우스 왼쪽 버튼에서 손을 떼는 순간 && 속도의 y 값이 양수라면(위쪽 상승중)
            //현재 속도를 절반으로 변경 => 마우스 클릭을 길게 하면 오래 점프하고 때면 짧게 점프하기 위해 사용
            playerRigidbody.velocity = playerRigidbody.velocity * 0.5f;
        }

        //애니메이터의 Grounded 파라미터를 isGrounded 값으로 갱신
        animator.SetBool("Grounded", isGrounded);
   }


   private void Die() {
        // 사망 처리
        //애니 메이터의 Die 트리거 파라미터 셋
        animator.SetTrigger("Die");

        //오디오 소스에 할당된 오디오 클립을 deathClip으로 변경
        playerAudio.clip = deathClip;
        //사망 효과음 재생
        playerAudio.Play();

        //속도를 제로(0,0)으로 변경
        playerRigidbody.velocity = Vector2.zero;
        //사망 상태를 true로 변경
        isDead = true;

        //게임 매니저의 게임오버 처리 실행
        GameManager.instance.OnPlayerDead();
   }

   private void OnTriggerEnter2D(Collider2D other) {
       // 트리거 콜라이더를 가진 장애물과의 충돌을 감지
        if(other.tag == "Dead" && !isDead)
        {
            //충돌한 상대방의 태그가 Dead 이며, 아직 사망하지 않았다면 Die() 실행
            Die();
        }
   }

   private void OnCollisionEnter2D(Collision2D collision) {
        // 바닥에 닿았음을 감지하는 처리
        //어떤 콜라이더와 닿았으며, 충돌 표면이 위쪽을 보고 있으면
        //collision.contacts[0] 는 충돌지점의 개수를 배열에서 반환한다.
        //normal은 노말 벡터로 충돌지점과 방향을 알려준다.
        //충돌지점의 표면의 방향이 위쪽이며 경사가 너무 급하지 않는지 검사
        //위쪽이라는것을 경사가 45도이상일 경우로 생각한다.
        if (collision.contacts[0].normal.y > 0.7f) 
        {
            //isGrounded를 true로 변경하고 , 누적 점프 횟수를 0으로 리셋
            isGrounded = true;
            jumpCount = 0;
        }
   }

   private void OnCollisionExit2D(Collision2D collision) {
       // 바닥에서 벗어났음을 감지하는 처리
       //어떤 콜라이더에서 떼이진 경우 isGrounded를 false로 변경
       isGrounded = false;
   }
}