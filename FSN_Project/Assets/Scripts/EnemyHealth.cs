using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class EnemyHealth : MonoBehaviour
{

    public int Hp = 100;

    //�̺�Ʈ �븮�� ����
    public event Action<Transform> OnTakenDamage;

    public bool IsDead { get; private set; }
    
    public void TakeDamage(int damage)
    {
        Hp -= damage;

        OnTakenDamage?.Invoke(transform);

        Debug.Log($"{gameObject} : ������ ���� {damage}");

        if(Hp <= 0)
        {
            IsDead = true;
            gameObject.SetActive(false);

            Debug.Log($"{gameObject} : ����");
        }
    }
}
