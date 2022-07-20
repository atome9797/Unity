using UnityEngine;

// 플레이어 캐릭터를 조작하기 위한 사용자 입력을 감지
// 감지된 입력값을 다른 컴포넌트들이 사용할 수 있도록 제공
public class PlayerInput : MonoBehaviour 
{
    public string MoveAxisName = "Vertical"; 
    public string RotateAxisName = "Horizontal";
    public string FireButtonName = "Fire1"; 
    public string ReloadButtonName = "Reload";

    // 값 할당은 내부에서만 가능
    public float MoveDirection { get; private set; } 
    public float RotateDirection { get; private set; }
    public bool Fire { get; private set; } 
    public bool Reload { get; private set; } 

    // 매프레임 사용자 입력을 감지
    private void Update() {
        // 게임오버 상태에서는 사용자 입력을 감지하지 않는다
        if (GameManager.Instance.isGameover)
        {
            MoveDirection = 0;
            RotateDirection = 0;
            Fire = false;
            Reload = false;
            return;
        }

        // move에 관한 입력 감지
        MoveDirection = Input.GetAxis(MoveAxisName);
        // rotate에 관한 입력 감지
        RotateDirection = Input.GetAxis(RotateAxisName);
        // fire에 관한 입력 감지
        Fire = Input.GetButton(FireButtonName);
        // reload에 관한 입력 감지
        Reload = Input.GetButtonDown(ReloadButtonName);
    }
}