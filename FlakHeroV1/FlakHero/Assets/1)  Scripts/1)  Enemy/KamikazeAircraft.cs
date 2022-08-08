using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KamikazeAircraft : EnemyAircraft
{
    [Header("KamikazeAircraft")]
    public  GameObject  target;                      // �÷��̾� ���ӿ�����Ʈ ��������
    public  int         maxHP               = 100;   // �ִ�ü��
    public  int         currentHP;                   // ����ü��
    public  float       flightSpeed         = 10f;   // ���� ���ǵ�
    public  bool        IsSreachedPlayer;            // �÷��̾�� ���� ����

    private void Awake()
    {
        reset();
    }

    private void Update()
    {
        MoveAndSelfDestruct();
    }

    public override void TakeDamage(int damage)
    {
        if (currentHP <= 0)
        {
            ExplodeAircraft();
            ItemAirDrop();
            GameManager.Instance.AddScore();

            reset();
            KamikazeAircraftPool.ReturnObject(this);
        }

        currentHP -= damage;
    }

    void MoveAndSelfDestruct()
    {
        Vector3 to = new Vector3(target.transform.position.x, target.transform.position.y + 5, target.transform.position.z);
        Vector3 from = transform.position;

        if (IsSreachedPlayer == false)
        {
            transform.rotation = Quaternion.LookRotation(to - from);
            transform.Translate(Vector3.forward * Time.deltaTime * flightSpeed);
        }
        else
        {
            ExplodeAircraft();
            reset();
            KamikazeAircraftPool.ReturnObject(this);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            IsSreachedPlayer = true;
            other.GetComponent<PlayerController>().TakeDamage(5);
        }
    }

    private void reset()
    {
        currentHP = maxHP;
        IsSreachedPlayer = false;
    }
}
