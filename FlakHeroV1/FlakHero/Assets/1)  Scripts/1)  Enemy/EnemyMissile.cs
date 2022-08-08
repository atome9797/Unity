using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyMissile : MonoBehaviour
{
    [Header("Missile")]
    public  GameObject  target;                             
    public  float       flightSpeed         = 10f;          
    public  float       explosionDelayTime  = 0.1f;
    public  float       searchTime          = 2f;
    public  float       explosionRadius     = 10.0f;
    public  float       explosionForce      = 1000.0f;
    public  bool        IsSreachedPlayer;                   

    private void Start()
    {
        IsSreachedPlayer = false;
    }

    private void Update()
    {
        MoveAndSelfBoom();
    }

    void MoveAndSelfBoom()
    {
        Vector3 to = new Vector3(target.transform.position.x, target.transform.position.y - 4, target.transform.position.z);
        Vector3 from = transform.position;

        if (IsSreachedPlayer == false)
        {
            // �÷��̾ ȸ�������� �ڵ����� �����ϵ��� ó��
            
            StartCoroutine("NotFoundTarget");

            transform.rotation = Quaternion.LookRotation(to - from);
            transform.Translate(Vector3.forward * Time.deltaTime * flightSpeed);

            if (gameObject == null)
            {
                StopCoroutine("NotFoundTarget");
            }
        }

        else
        {
            StartCoroutine("ExplodeMissile");
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == GameManager.Instance.Player)
        {
            IsSreachedPlayer = true;

            Debug.Log("���� �÷��̾�� ������");
        }
    }

    public IEnumerator ExplodeMissile()
    {
        yield return new WaitForSeconds(explosionDelayTime);

        OnExplosion();

        //// ���� ������ �ִ� ��� ������Ʈ�� collider ������ �޾ƿ� ���� ȿ�� ó��
        Collider[] colliders = Physics.OverlapSphere(transform.position, explosionRadius);
        foreach (Collider hit in colliders)
        {
            // ���� ������ �ε��� ������Ʈ�� �÷��̾��� �� ó��
            PlayerController player = hit.GetComponent<PlayerController>();
            if (player != null)
            {
                player.TakeDamage(5);
                continue;
            }
        }
        EnemyMissilePool.ReturnObject(this);
    }

    private IEnumerator NotFoundTarget()
    {
        yield return new WaitForSeconds(searchTime);

        OnExplosion();

        if (gameObject != null)
        {
            EnemyMissilePool.ReturnObject(this);
        }
    }

    void OnExplosion()
    {
        Bounds bounds = GetComponent<Collider>().bounds;
        var obj = ProjectileExplosionPool.GetObject();
        obj.transform.position = new Vector3(bounds.center.x, bounds.min.y, bounds.center.z);
        obj.transform.rotation = transform.rotation;
    }
}