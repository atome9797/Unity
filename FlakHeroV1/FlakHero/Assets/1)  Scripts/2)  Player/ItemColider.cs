using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class ItemColider : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Item"))
        {
            //아이템 Tag를 가진 컴포넌트를 가져옴
            other.GetComponent<ItemBase>().Use(transform.parent.gameObject); //플레이어에게 아이템 사용되게 함
        }

    }
}