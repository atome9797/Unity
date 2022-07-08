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
        //_input에 값을 할당한다.
        _input = GetComponent<PlayerInput>();
        playerRigidbody = GetComponent<Rigidbody>();

    }

    void Update()
    {
        //위로 안움직이기 때문에 x, z좌표로 이동한다.
        //각 방향에 따라 힘을 가하기
        float xSpeed = _input.X * speed;
        float zSpeed = _input.Y * speed;

        if(UseSpeed)
        {
            //velocity 속도를 알수있음 => 어느 방향으로 속도를 줄것인가를 지정
            // 가속도를 제거할수 있다.
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
