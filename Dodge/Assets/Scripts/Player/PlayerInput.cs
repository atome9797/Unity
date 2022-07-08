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
        //이전 값을 날리고, 기본값으로 초기화
        X = Y = 0f;

        X = Input.GetAxis("Horizontal"); //키보드의 경우 -1 , 0 , 1
        Y = Input.GetAxis("Vertical");//키보드의 경우 -1 , 0 , 1

        /*//현재 프레임의 입력값을 저장
        Up = Input.GetKey(KeyCode.UpArrow) || Input.GetKey(KeyCode.W);
        Down = Input.GetKey(KeyCode.DownArrow) || Input.GetKey(KeyCode.S);
        Left = Input.GetKey(KeyCode.LeftArrow) || Input.GetKey(KeyCode.A);
        Right = Input.GetKey(KeyCode.RightArrow) || Input.GetKey(KeyCode.D);*/
    }
}
