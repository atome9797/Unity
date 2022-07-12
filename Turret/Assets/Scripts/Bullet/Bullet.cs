using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour
{
    public float Speed = 0.01f;
    public GameObject Player;

    private void Start()
    {
        Destroy(gameObject , 3f);
        Player = GameObject.Find("Player");
    }

    private void Update()
    {
        transform.LookAt(Player.transform);
        transform.Translate(0f, 0f, Speed);
        //transform.position = new Vector3(0f, 0f, Speed);
    }

    

}
