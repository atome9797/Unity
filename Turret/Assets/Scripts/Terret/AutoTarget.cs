using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AutoTarget : MonoBehaviour
{
    public bool IsTargetOn { get; private set; } 
    
    //Ÿ���̶�� ���� ������Ʈ ���� => Ÿ���� �÷��̾��� ��ġ�� ������
    public GameObject Target { get; private set; }

    //�浹 �߻��� ����
    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player")
        {
            IsTargetOn = true;
            Target = other.gameObject;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        IsTargetOn = false;
        Target = null;
    }
}
