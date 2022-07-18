using UnityEngine;

// PlayerController는 플레이어 캐릭터로서 Player 게임 오브젝트를 제어한다.
public class PlayerController : MonoBehaviour {
   public AudioClip deathClip; // 사망시 재생할 오디오 클립
   public float jumpForce = 700f; // 점프 힘
    public int MaxJumpCount = 2;

   private int jumpCount = 0; // 누적 점프 횟수
   private bool isOnGround = true; 
    private bool isDead = false; // 사망 상태

   private Rigidbody2D playerRigidbody; // 사용할 리지드바디 컴포넌트
   private Animator animator; // 사용할 애니메이터 컴포넌트
   private AudioSource playerAudio; // 사용할 오디오 소스 컴포넌트
    private Vector2 _zero;

    //C#에서 상수 만드는 방법
    //1. const : compile 중에 실행
    //2. readonly : runtime 중에 실행
    // C# 에서는 static 멤버 함수내에서 사용 불가
   
    private static class AnimationID
    {
        //같은 값을 가지기 때문에 각 인스턴스마다 데이터를 가지고 있을 필요가 없음.
        public static readonly int IS_ON_GROUND = Animator.StringToHash("IsOnGround");
        public static readonly int DIE = Animator.StringToHash("Die");
    }

    private static readonly float MIN_NORMAL_Y = Mathf.Sin(45f * Mathf.Deg2Rad);

   private void Awake() {
        // 초기화
        playerRigidbody = GetComponent<Rigidbody2D>();
        animator = GetComponent<Animator>();
        playerAudio = GetComponent<AudioSource>();
        _zero = Vector2.zero;
   }

    private void Start()
    {
    }

    private void Update() {
       // 사용자 입력을 감지하고 점프하는 처리
       if(isDead)
        {
            return;
        }

       if(Input.GetMouseButtonDown(0))
        {
            //최대 점프에 도달했으면 아무것도 안함
            if(jumpCount >= MaxJumpCount)
            {
                return;
            }

            jumpCount++;

            playerRigidbody.velocity = _zero;

            playerRigidbody.AddForce(new Vector2(0f, jumpForce));
            playerAudio.Play();

        }

       if(Input.GetMouseButtonUp(0))
        {
            if(playerRigidbody.velocity.y > 0)
            {
                playerRigidbody.velocity *= 0.5f;
            }
        }

        animator.SetBool(AnimationID.IS_ON_GROUND, isOnGround);
   }

   private void die() {
        // 사망 처리
        //1. _isDead = true
        //2. 애니메이션 업데이트
        //3. 플레이어 캐릭터 멈추기
        //4. 죽을때 소리도 재생
        isDead = true;

        animator.SetTrigger(AnimationID.DIE);
        playerRigidbody.velocity = _zero;
        //단 한번만 실행할때 사용한다.
        playerAudio.PlayOneShot(deathClip); //단발로 실행

        GameManager.Instance.End();
    }

   private void OnTriggerEnter2D(Collider2D other) {
        // 트리거 콜라이더를 가진 장애물과의 충돌을 감지
        if(other.tag == "Dead")
        {
            if (isDead == false)
            {
                die();
            }
        }
   }

   private void OnCollisionEnter2D(Collision2D collision) {
        // 바닥에 닿았음을 감지하는 처리
        // 플랫폼 위로 안착했다면
        ContactPoint2D point = collision.GetContact(0);
        if(point.normal.y >= MIN_NORMAL_Y)
        {
            isOnGround = true;
            jumpCount = 0;

            GameManager.Instance.AddScore();

        }
   }

   private void OnCollisionExit2D(Collision2D collision) {
        // 바닥에서 벗어났음을 감지하는 처리
        isOnGround = false;
   }
}