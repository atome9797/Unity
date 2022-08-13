using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovementT10 : MonoBehaviour
{
    public float MoveSpeed = 10f;
    public float RotationSpeed = 120f;

    private PlayerInputT10 _input;
    private Rigidbody _rigidbody;

    private void Awake()
    {
        _input = GetComponent<PlayerInputT10>();
        _rigidbody = GetComponent<Rigidbody>();
    }

    private void FixedUpdate()
    {
        moveForward(_input.Y);
        rotateClockwise(_input.X);
    }

    /// <summary>
    /// 캐릭터를 앞 뒤로 움직인다.
    /// </summary>
    /// <param name="direction">양수면 캐릭터의 forward 방향을 의미하며, 음수면 캐릭터의 backward 방향을 의미한다.</param>
    private void moveForward(float direction)
    {
        // 1. Rigidbody의 속력을 이용하는 방법 => 애니메이션 딱히 없으니까 안함.
        // 2. 순간이동을 시키는 방법
        // 거리 = 속력 * 시간
        Vector3 deltaPosition = MoveSpeed * direction * Time.fixedDeltaTime * transform.forward;
        Vector3 newPosition = _rigidbody.position + deltaPosition;
        _rigidbody.MovePosition(newPosition);
    }

    /// <summary>
    /// 캐릭터를 시계방향으로 회전시킨다.
    /// </summary>
    /// <param name="direction">양수면 시계방향을, 음수면 반시계방향을 의미한다.</param>
    private void rotateClockwise(float direction)
    {
        Quaternion deltaRotation = Quaternion.Euler(0f,
            RotationSpeed * direction * Time.fixedDeltaTime,
            0f);
        Quaternion newRotation = _rigidbody.rotation * deltaRotation;
        _rigidbody.MoveRotation(newRotation);
    }
}
