using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemySensor : MonoBehaviour
{

    private EnemyMovement _enemyMovement;
    private int _layer;

    private void Awake()
    {
        _enemyMovement = GetComponentInParent<EnemyMovement>();
        //Enemy 레이어를 가진 객체를 받음
        _layer = LayerMask.NameToLayer("Enemy");
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.layer == _layer)
        {
            EnemyHealth enemyHealth = other.GetComponent<EnemyHealth>();
            Debug.Assert(enemyHealth != null);

            //범위에 접촉하는 객체를 이벤트 등록
            enemyHealth.OnTakenDamage -= _enemyMovement.MoveTo;
            enemyHealth.OnTakenDamage += _enemyMovement.MoveTo;

            Debug.Log($"{other.name} 에 {transform.parent.name}의 MoveTo가 추가됨");
        }
    }


    private void OnTriggerExit(Collider other)
    {
        if(other.gameObject.layer == _layer)
        {
            EnemyHealth enemyHealth = other.GetComponent<EnemyHealth>();
            Debug.Assert(enemyHealth != null);

            enemyHealth.OnTakenDamage -= _enemyMovement.MoveTo;

            Debug.Log($"{other.name} 에 {transform.parent.name}의 MoveTo가 제거됨");
        }
    }

}
