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
        //Ÿ�� �������� �����Ҽ� �ִ�.
        //Time.timeScale = 2.0f;
        _randomTime = Random.Range(minTime, maxTime);
    }

    void Update()
    {
/*        if(Input.GetKey(KeyCode.R))
        {
            Time.timeScale = 0.5f; //������
        }
        else
        {
            Time.timeScale = 1f; //������
        }*/

        //0.5�� �������� Debug.Log()�� ����
        //Unity Engine���� �ð��� ���õ� ����� Time�� �ִ�
        _elapsedTime += Time.deltaTime;

        if (_elapsedTime >= _randomTime)
        {
            Debug.Log("BulletSpawner Update");

            _randomTime = Random.Range(minTime, maxTime);
            _elapsedTime = 0.0f;
            GameObject bullet = Instantiate(BulletPrefab, transform); //���� ������Ʈ ����
            bullet.transform.LookAt(Player);
        }
    }
}