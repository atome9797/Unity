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

       /* //��� 1.
        //�켱 other�� PlayerHealth ������Ʈ�� �޴��� Ȯ���Ѵ�.
        //������Ʈ�� null�� �ƴϸ� �ش�������Ʈ�� die�Լ��� ������
        other.GetComponent<PlayerHealth>()?.Die();


        //1. ������
        // (expression)?.~ : expression�� null�� �ƴϸ� ����� ������
        //��� 2.
        if(other.tag == "Player")
        {
            other.GetComponent<PlayerHealth>().Die();
        }*/
    }
}
