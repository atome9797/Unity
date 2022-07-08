using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    private PlayerInput _input;
    public Rigidbody playerRigidbody;
    public float speed = 8f;
    public bool UseSpeed = false;

    // Start is called before the first frame update
    void Start()
    {
        //_input�� ���� �Ҵ��Ѵ�.
        _input = GetComponent<PlayerInput>();
        playerRigidbody = GetComponent<Rigidbody>();

    }

    void Update()
    {
        //���� �ȿ����̱� ������ x, z��ǥ�� �̵��Ѵ�.
        //�� ���⿡ ���� ���� ���ϱ�
        float xSpeed = _input.X * speed;
        float zSpeed = _input.Y * speed;

        if(UseSpeed)
        {
            //velocity �ӵ��� �˼����� => ��� �������� �ӵ��� �ٰ��ΰ��� ����
            // ���ӵ��� �����Ҽ� �ִ�.
            playerRigidbody.velocity = new Vector3(xSpeed,0f, zSpeed);
        }else
        {
            playerRigidbody.AddForce(xSpeed, 0, zSpeed);
        }

/*        if (_input.Up == true)
        {
            playerRigidbody.AddForce(0f, 0f, speed);
            //transform.Translate(new Vector3(0, 0, 20) * Time.deltaTime);
        }
        if (_input.Down == true)
        {
            playerRigidbody.AddForce(0f, 0f, -speed);
        }
        if (_input.Left == true)
        {
            playerRigidbody.AddForce(-speed, 0f, 0f);
        }
        if (_input.Right == true)
        {
            playerRigidbody.AddForce(speed, 0f, 0f);
        }*/

    }
}
