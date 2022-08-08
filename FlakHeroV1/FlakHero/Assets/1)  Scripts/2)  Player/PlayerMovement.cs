using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(CharacterController))]
public class PlayerMovement : MonoBehaviour
{
    public float        moveSpeed; // �̵��ӵ�
    private Vector3     moveForce; // �̵� �� (x, z�� y���� ������ ����� ���� �̵��� ����)

    public float        jumpForce; // ���� ��
    public float        gravity; // �߷� ���

    public float        MoveSpeed
    {
        set => moveSpeed = Mathf.Max(0, value);
        get => moveSpeed;
    }

    private CharacterController characterController; // �÷��̾� �̵� ��� ���� ������Ʈ

    private void Awake()
    {
        characterController = GetComponent<CharacterController>();
    }

    void Update()
    {
        // ����� �������� �߷¸�ŭ y�� �̵��ӵ� ����
        if ( !characterController.isGrounded)
        {
            moveForce.y += gravity * Time.deltaTime;
        }

        // 1�ʴ� moveForce �ӷ����� �̵�
        characterController.Move(moveForce * Time.deltaTime);
    }

    public void MoveTo(Vector3 direction)
    {
        // �̵� ���� = ĳ���� ȸ�� �� * ���� �� ( ī�޶� ȸ������ ���� ������ ���ϱ� ������ ȸ������ ���ؼ� �����ؾ��Ѵ�.)
        direction = transform.rotation * new Vector3(direction.x, 0, direction.z);


        // �̵� �� = �̵����� * �ӵ� ( ���� �Ʒ��� �ٶ󺸰� �̵��� ��� ĳ���Ͱ� �������� �߰ų� �Ʒ��� ���� ������ �ϱ� ������ direction�� �״�� ������� �ʰ�, moveForce������ x, z���� �־ ���
        moveForce = new Vector3(direction.x * moveSpeed, moveForce.y, direction.z * moveSpeed);
    }

    public void Jump()
    {
        // �÷��̾ �ٴڿ� ���� ���� ���� ����
        if (characterController.isGrounded)
        {
            moveForce.y = jumpForce;
        }
    }
}
