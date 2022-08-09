using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class ItemColider : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Item"))
        {
            //������ Tag�� ���� ������Ʈ�� ������
            other.GetComponent<ItemBase>().Use(transform.parent.gameObject); //�÷��̾�� ������ ���ǰ� ��
        }

    }
}