using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInput : MonoBehaviour
{
    
    public float X { get; private set; }
    public float Y { get; private set; }


    void Start()
    {
        Debug.Log("PlayerInput Start");   
    }

    // Update is called once per frame
    void Update()
    {
        //���� ���� ������, �⺻������ �ʱ�ȭ
        X = Y = 0f;

        X = Input.GetAxis("Horizontal"); //Ű������ ��� -1 , 0 , 1
        Y = Input.GetAxis("Vertical");//Ű������ ��� -1 , 0 , 1

        /*//���� �������� �Է°��� ����
        Up = Input.GetKey(KeyCode.UpArrow) || Input.GetKey(KeyCode.W);
        Down = Input.GetKey(KeyCode.DownArrow) || Input.GetKey(KeyCode.S);
        Left = Input.GetKey(KeyCode.LeftArrow) || Input.GetKey(KeyCode.A);
        Right = Input.GetKey(KeyCode.RightArrow) || Input.GetKey(KeyCode.D);*/
    }
}
