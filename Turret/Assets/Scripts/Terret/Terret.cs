using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Terret : MonoBehaviour
{
    private float _elapsedTime = 0.0f;

    public Transform Player;
    public GameObject BulletPrefab;

    public float RotationSpeed = 50f;
    public float AttackCooltime = 0.5f;
    private AutoTarget _autoTarget;

    private void Awake()
    {
        _autoTarget = GetComponentInChildren<AutoTarget>();
        //AutoTarget 클래스 안의 target이라는 게임 오브젝트를 불러옴 => 플레이어의 위치 정보 있음
    }


    //private bool isTurnTerret = true;

    // Update is called once per frame
    void Update()
    {
        if (_autoTarget.IsTargetOn) //범위 안에 들어왔을때 실행한다.
        {
            //TerretInner.transform.Rotate(0, 1, 0);
            onTargetOn(); 
        }
        else //범위 밖으로 나갔을때 실행한다.
        {
            onIdle();
        }
    }

    void onTargetOn()
    {
        //player의 정보를 가져오게 됨
        transform.LookAt(_autoTarget.Target.transform); 
        //update에서 실시간으로 플레이어의 위치를 가져옴

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
        transform.Rotate(0f, RotationSpeed * Time.deltaTime, 0f);
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
