using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttackT10 : MonoBehaviour
{
    public int Damage = 10;

    private PlayerInputT10 _input;

    private Collider[] _colliders = new Collider[3];
    private int _colliderCount;
    private int _enemyLayerMask;


    private void Awake()
    {
        _input = GetComponent<PlayerInputT10>();

        LayerMask layerMask = LayerMask.NameToLayer("Enemy");
        _enemyLayerMask = (1 << layerMask);
    }

    private void FixedUpdate()
    {
        if (_input.Attack)
        {
            attack();
        }
    }

    private void attack()
    {
        Vector3 attackPosition = transform.position + transform.forward;
        _colliderCount = Physics.OverlapSphereNonAlloc(attackPosition, 1f, _colliders, _enemyLayerMask);

        for (int i = 0; i < _colliderCount; ++i)
        {
            EnemyHealth enemyHealth = _colliders[i].GetComponent<EnemyHealth>();
            Debug.Assert(enemyHealth != null);

            enemyHealth.TakeDamage(Damage);
        }

        Debug.Log($"{gameObject} : 받아라 나의 강력한 공격!");
    }


}
