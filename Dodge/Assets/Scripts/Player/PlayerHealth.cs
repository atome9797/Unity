using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHealth : MonoBehaviour
{

    public void Die()
    {
        //���� ������Ʈ�� ������Ű�� ��
        gameObject.SetActive(false);  //������Ʈ �޼��� ���۾ȵ�

        FindObjectOfType<GameManager>().End();

    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Bullet")
        {
            Die();
        }

    }


}
