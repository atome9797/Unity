using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour
{

    public float Speed = 0.05f;

    private void Start()
    {
        Destroy(gameObject, 3f);
    }

    void Update()
    {
        transform.Translate(0f, 0f, Speed);       
    }

    private void OnTriggerEnter(Collider other)
    {

       /* //방법 1.
        //우선 other이 PlayerHealth 컴포넌트를 받는지 확인한다.
        //컴포넌트가 null이 아니면 해당컴포넌트의 die함수를 실행함
        other.GetComponent<PlayerHealth>()?.Die();


        //1. 연산자
        // (expression)?.~ : expression이 null이 아니면 멤버에 접근함
        //방법 2.
        if(other.tag == "Player")
        {
            other.GetComponent<PlayerHealth>().Die();
        }*/
    }
}
