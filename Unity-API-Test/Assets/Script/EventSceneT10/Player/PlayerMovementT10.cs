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
    /// ĳ���͸� �� �ڷ� �����δ�.
    /// </summary>
    /// <param name="direction">����� ĳ������ forward ������ �ǹ��ϸ�, ������ ĳ������ backward ������ �ǹ��Ѵ�.</param>
    private void moveForward(float direction)
    {
        // 1. Rigidbody�� �ӷ��� �̿��ϴ� ��� => �ִϸ��̼� ���� �����ϱ� ����.
        // 2. �����̵��� ��Ű�� ���
        // �Ÿ� = �ӷ� * �ð�
        Vector3 deltaPosition = MoveSpeed * direction * Time.fixedDeltaTime * transform.forward;
        Vector3 newPosition = _rigidbody.position + deltaPosition;
        _rigidbody.MovePosition(newPosition);
    }

    /// <summary>
    /// ĳ���͸� �ð�������� ȸ����Ų��.
    /// </summary>
    /// <param name="direction">����� �ð������, ������ �ݽð������ �ǹ��Ѵ�.</param>
    private void rotateClockwise(float direction)
    {
        Quaternion deltaRotation = Quaternion.Euler(0f,
            RotationSpeed * direction * Time.fixedDeltaTime,
            0f);
        Quaternion newRotation = _rigidbody.rotation * deltaRotation;
        _rigidbody.MoveRotation(newRotation);
    }
}
