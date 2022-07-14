using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DotProductTest : MonoBehaviour
{
    public Transform Target;

    private float runningTime = 0;
    private Vector3 newPos = new Vector3();
    private float radius = 5;
    private float speed = 10;

    // Update is called once per frame
    void Update()
    {
        Vector3 distanceVector = Target.position - transform.position; //타겟 시점에서 거리잼

        /*        runningTime += Time.deltaTime * speed; //거리 = 속력 * 시간

                //각도를 알면 두 벡터 사이의 힘의 크기를 구할수 있다. => 힘의 크기를 알면 각도를 알수 있다.
                //역 함수 
                //벡터(스칼라) = 방향 * 거리()
                float x = radius * Mathf.Cos(runningTime); // -1 ~ 1 사이의 범위값을 가진다. (벡터값을 생성가능)
                float y = radius * Mathf.Sin(runningTime);

                //두 벡터 사이의 내적을 구한다.
                Vector3.Dot(transform.forward, distanceVector.normalized);


                newPos = new Vector3(x , 0f , y);
                Target.transform.position = newPos;
        */

        Target.Rotate(0f,0f, Time.deltaTime * speed);
        float cos = Vector3.Dot(transform.forward, distanceVector.normalized);
        float x = radius * cos;
        newPos = new Vector3(x, 0f, 0f);
        Target.transform.position = newPos;


        //내적 Dot
        Debug.Log(Vector3.Dot(transform.forward, distanceVector.normalized)); //단위 벡터

        
        Debug.DrawRay(transform.position, transform.forward * 5f, Color.blue);
        Debug.DrawRay(transform.position, distanceVector, Color.red);

        //외적 Cross
        Vector3 normalVector = Vector3.Cross(transform.forward, distanceVector.normalized);
        Debug.DrawRay(transform.position, normalVector * 5f, Color.green);



    }
}
