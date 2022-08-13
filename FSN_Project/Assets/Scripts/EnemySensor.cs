using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemySensor : MonoBehaviour
{

    private EnemyAI _enemyMovement;
    private int _layer;

    private void Awake()
    {
        _enemyMovement = GetComponentInParent<EnemyAI>();
        _layer = LayerMask.NameToLayer("Enemy");
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.layer == _layer)
        {
            EnemyHealth enemyHealth = other.GetComponent<EnemyHealth>();
            Debug.Assert(enemyHealth != null);

            //������ �����ϴ� ��ü�� �̺�Ʈ ���
            enemyHealth.OnTakenDamage -= _enemyMovement.UpdateWalkTest;
            enemyHealth.OnTakenDamage += _enemyMovement.UpdateWalkTest;

            Debug.Log($"{other.name} �� {transform.parent.name} �� MoveTo�� �߰���");
        }
    }


    private void OnTriggerExit(Collider other)
    {
        if(other.gameObject.layer == _layer)
        {
            EnemyHealth enemyHealth = other.GetComponent<EnemyHealth>();
            Debug.Assert(enemyHealth != null);

            enemyHealth.OnTakenDamage += _enemyMovement.UpdateWalkTest;

            Debug.Log($"{other.name} �� {transform.parent.name}�� MoveTo�� ���ŵ�");
        }
    }





}
