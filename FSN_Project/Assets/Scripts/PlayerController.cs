using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Assets;

public class PlayerController : MonoBehaviour , ITargetable
{
    public float speed = 16f;
    private PlayerInput _input;
    public Rigidbody playerRigidbody;
    

    public void Damaged()
    {
        Debug.Log("공격을 받았다.");
    }


    private void Awake()
    {
        _input = GetComponent<PlayerInput>();
    }

    private void Update()
    {
        float xSpeed = _input.X * speed;
        float zSpeed = _input.Y * speed;

        playerRigidbody.velocity = new Vector3(xSpeed, 0f, zSpeed);
    }





}
