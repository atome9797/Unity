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
        Vector3 distanceVector = Target.position - transform.position; //Ÿ�� �������� �Ÿ���

        /*        runningTime += Time.deltaTime * speed; //�Ÿ� = �ӷ� * �ð�

                //������ �˸� �� ���� ������ ���� ũ�⸦ ���Ҽ� �ִ�. => ���� ũ�⸦ �˸� ������ �˼� �ִ�.
                //�� �Լ� 
                //����(��Į��) = ���� * �Ÿ�()
                float x = radius * Mathf.Cos(runningTime); // -1 ~ 1 ������ �������� ������. (���Ͱ��� ��������)
                float y = radius * Mathf.Sin(runningTime);

                //�� ���� ������ ������ ���Ѵ�.
                Vector3.Dot(transform.forward, distanceVector.normalized);


                newPos = new Vector3(x , 0f , y);
                Target.transform.position = newPos;
        */

        Target.Rotate(0f,0f, Time.deltaTime * speed);
        float cos = Vector3.Dot(transform.forward, distanceVector.normalized);
        float x = radius * cos;
        newPos = new Vector3(x, 0f, 0f);
        Target.transform.position = newPos;


        //���� Dot
        Debug.Log(Vector3.Dot(transform.forward, distanceVector.normalized)); //���� ����

        
        Debug.DrawRay(transform.position, transform.forward * 5f, Color.blue);
        Debug.DrawRay(transform.position, distanceVector, Color.red);

        //���� Cross
        Vector3 normalVector = Vector3.Cross(transform.forward, distanceVector.normalized);
        Debug.DrawRay(transform.position, normalVector * 5f, Color.green);



    }
}
