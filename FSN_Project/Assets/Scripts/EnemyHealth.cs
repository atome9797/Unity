using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class EnemyHealth : MonoBehaviour
{

    public int Hp = 100;

    //이벤트 대리자 선언
    public event Action<Transform> OnTakenDamage;

    public bool IsDead { get; private set; }
    
    public void TakeDamage(int damage)
    {
        Hp -= damage;

        OnTakenDamage?.Invoke(transform);

        Debug.Log($"{gameObject} : 데미지 입음 {damage}");

        if(Hp <= 0)
        {
            IsDead = true;
            gameObject.SetActive(false);

            Debug.Log($"{gameObject} : 죽음");
        }
    }
}
