using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class Terret : MonoBehaviour
{
    public bool IsTargetOn { get; private set; }
    private float _elapsedTime = 0.0f;
    public int sightAngle = 60;

    public Transform Player;
    public GameObject BulletPrefab;

    public float RotationSpeed = 50f;
    public float AttackCooltime = 0.5f;
    private AutoTarget _autoTarget;

    //public Vector3 forwardTest;
    public GameObject OuterTerret;


    private void Awake()
    {
        _autoTarget = GetComponentInChildren<AutoTarget>();
        //forwardTest = _autoTarget.transform.forward;
        //AutoTarget 클래스 안의 target이라는 게임 오브젝트를 불러옴 => 플레이어의 위치 정보 있음
    }

    private Vector3 _arcStartVector;
    private void Start()
    {
        float angle = 150f - transform.eulerAngles.y;
        float x = Mathf.Cos(angle * Mathf.Deg2Rad);
        float z = Mathf.Sin(angle * Mathf.Deg2Rad);
        _arcStartVector = new Vector3(x, 0f, z);
    }
    private Color _red = new Color(1f, 0f, 0f, 0.1f);
    private Color _blue = new Color(0f, 0f, 1f, 0.1f);
    void OnDrawGizmos()
    {
        Handles.color = IsTargetOn ? _red : _blue;
        Handles.DrawSolidArc(transform.position, transform.up, _arcStartVector, -30f, 10f);
        Handles.DrawSolidArc(transform.position, transform.up, _arcStartVector, 30f, 10f);
    }



    //private bool isTurnTerret = true;

    // Update is called once per frame
    void Update()
    {
 /*       if (_autoTarget.IsTargetOn) //범위 안에 들어왔을때 실행한다.
        {
            //TerretInner.transform.Rotate(0, 1, 0);
            onTargetOn(); 
        }
        else //범위 밖으로 나갔을때 실행한다.
        {
            onIdle();
        }*/

        Debug.DrawRay(transform.position, OuterTerret.transform.forward * 5f, Color.blue);



        if (_autoTarget.IsTargetOn) //범위 안에 들어왔을때 실행한다.
        {
            Debug.Log("is Visible: " + isTargetInSight(transform.position, Player.position, OuterTerret.transform.forward));

            if (isTargetInSight(transform.position, Player.position, OuterTerret.transform.forward))
            {
                onTargetOn();
                IsTargetOn = true;
            }
            else
            {

                IsTargetOn = false;
            }
            //TerretInner.transform.Rotate(0, 1, 0);
        }
        else //범위 밖으로 나갔을때 실행한다.
        {
            IsTargetOn = false;
            onIdle();
        }
    }

    bool isTargetInSight(Vector3 terret, Vector3 target, Vector3 forward)
    {
        //터렛을 기준으로의 거리를 구할수 있다.
        Vector3 targetDirection = (target - terret).normalized;
        //터렛의 방향과 거리값을 내적해서 값을 구한다.
        float dotProduct = Vector3.Dot(forward.normalized, targetDirection);
        Vector3 CrossProduct = Vector3.Cross(forward.normalized, targetDirection);
        // 내적의 값이 > 0 이면 플레이어 앞에있고, < 0이면 뒤에있다.
        Debug.Log("dotProduct: " + dotProduct);
        float theta = Mathf.Acos(dotProduct) * Mathf.Rad2Deg;

        // Target과 Player사이의 각도
        if(dotProduct > 0 && theta > 30 && CrossProduct.y < 0f) //범위 안에 있고 각도 범위 안에 있을때
        {
            return true;
        }

        return false;
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
