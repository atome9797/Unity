using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletSpawner : MonoBehaviour
{
    private float _elapsedTime = 0.0f;
    private float _randomTime = 0f;
    public GameObject BulletPrefab;
    public float minTime = 0.5f;
    public float maxTime = 3f;
    public Transform Player;

    void Start()
    {
        //타임 스케일을 지정할수 있다.
        //Time.timeScale = 2.0f;
        _randomTime = Random.Range(minTime, maxTime);
    }

    void Update()
    {
/*        if(Input.GetKey(KeyCode.R))
        {
            Time.timeScale = 0.5f; //나누기
        }
        else
        {
            Time.timeScale = 1f; //나누기
        }*/

        //0.5초 간격으로 Debug.Log()를 찍어보자
        //Unity Engine에서 시간과 관련된 기능은 Time에 있다
        _elapsedTime += Time.deltaTime;

        if (_elapsedTime >= _randomTime)
        {
            Debug.Log("BulletSpawner Update");

            _randomTime = Random.Range(minTime, maxTime);
            _elapsedTime = 0.0f;
            GameObject bullet = Instantiate(BulletPrefab, transform); //게임 오브젝트 생성
            bullet.transform.LookAt(Player);
        }
    }
}