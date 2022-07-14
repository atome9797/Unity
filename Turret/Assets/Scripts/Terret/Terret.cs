using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Terret : MonoBehaviour
{
    private float _elapsedTime = 0.0f;
    public int sightAngle = 60;

    public Transform Player;
    public GameObject BulletPrefab;

    public float RotationSpeed = 50f;
    public float AttackCooltime = 0.5f;
    private AutoTarget _autoTarget;
    

    private void Awake()
    {
        _autoTarget = GetComponentInChildren<AutoTarget>();
        //AutoTarget Ŭ���� ���� target�̶�� ���� ������Ʈ�� �ҷ��� => �÷��̾��� ��ġ ���� ����
    }


    //private bool isTurnTerret = true;

    // Update is called once per frame
    void Update()
    {
 /*       if (_autoTarget.IsTargetOn) //���� �ȿ� �������� �����Ѵ�.
        {
            //TerretInner.transform.Rotate(0, 1, 0);
            onTargetOn(); 
        }
        else //���� ������ �������� �����Ѵ�.
        {
            onIdle();
        }*/

        Debug.DrawRay(transform.position, transform.forward * 5f, Color.blue);

        Debug.Log("is Visible: " + isTargetInSight(gameObject.transform.position, Player.position, gameObject.transform.forward));

        if (_autoTarget.IsTargetOn) //���� �ȿ� �������� �����Ѵ�.
        {
            if (isTargetInSight(_autoTarget.transform.position, Player.position, _autoTarget.transform.forward))
            {
                onTargetOn();
            }

                //TerretInner.transform.Rotate(0, 1, 0);
        }
        else //���� ������ �������� �����Ѵ�.
        {
            onIdle();
        }
    }

    bool isTargetInSight(Vector3 terret, Vector3 target, Vector3 forward)
    {
        //�ͷ��� ���������� �Ÿ��� ���Ҽ� �ִ�.
        Vector3 targetDirection = (target - terret).normalized;
        //�ͷ��� ����� �Ÿ����� �����ؼ� ���� ���Ѵ�.
        float dotProduct = Vector3.Dot(forward.normalized, targetDirection);
        // ������ ���� > 0 �̸� �÷��̾� �տ��ְ�, < 0�̸� �ڿ��ִ�.
        Debug.Log("dotProduct: " + dotProduct);

        // Target�� Player������ ����
        if(dotProduct > 0) //���� �ȿ� �ְ� ���� ���� �ȿ� ������
        {
            return true;
        }

        return false;
    }


    void onTargetOn()
    {
        //player�� ������ �������� ��
        //transform.LookAt(_autoTarget.Target.transform); 
        //update���� �ǽð����� �÷��̾��� ��ġ�� ������

        _elapsedTime += Time.deltaTime;
        if (_elapsedTime >= AttackCooltime)
        {
            _elapsedTime = 0f;
            Instantiate(BulletPrefab, transform.position, transform.rotation);
        }
    }

    void onIdle()
    {
        _elapsedTime = AttackCooltime;
        //transform.Rotate(0f, RotationSpeed * Time.deltaTime, 0f);
    }

/*    private void OnTriggerEnter(Collider other)
    {
        PlayerLookAt(other);
        CreateBullet();
    }

    private void OnTriggerStay(Collider other)
    {
        PlayerLookAt(other);

        _elapsedTime += Time.deltaTime;
        if (_elapsedTime >= 0.5f)
        {
            _elapsedTime = 0.0f;
            CreateBullet();
        }

    }

    private void OnTriggerExit(Collider other)
    {
        PlayerLookOutAt(other);
    }
*/

/*    void PlayerLookAt(Collider other)
    {
        if (other.tag == "Player")
        {
            TerretInner.transform.LookAt(Player);
            isTurnTerret = false;
        }
    }

    void PlayerLookOutAt(Collider other)
    {
        if (other.tag == "Player")
        {
            isTurnTerret = true;
        }
    }

    void CreateBullet()
    {
        GameObject bullet = Instantiate(BulletPrefab, transform);
        bullet.transform.LookAt(Player);
    }*/
}
