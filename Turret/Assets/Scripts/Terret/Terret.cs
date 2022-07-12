using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Terret : MonoBehaviour
{
    private float _elapsedTime = 0.0f;

    public Transform Player;
    public GameObject BulletPrefab;
    public GameObject Terret2;
    public float minTime = 0.5f;
    public float maxTime = 3;

    private bool isTurnTerret = true;

    // Update is called once per frame
    void Update()
    {   
        if(isTurnTerret)
        {
            Terret2.transform.Rotate(0, 1, 0);
        }
    }

    private void OnTriggerEnter(Collider other)
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


    void PlayerLookAt(Collider other)
    {
        if (other.tag == "Player")
        {
            Terret2.transform.LookAt(Player);
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
    }
}
