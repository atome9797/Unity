using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHealth : MonoBehaviour
{

    private void Update()
    {
        if(Input.GetKeyDown(KeyCode.Space))
        {
            Die();
        }
    }

    public void Die()
    {
        //���� ������Ʈ�� ������Ű�� ��
        gameObject.SetActive(false);  //������Ʈ �޼��� ���۾ȵ�
    }

}
