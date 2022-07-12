using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    private PlayerInput _input;
    public Rigidbody playerRigidbody;
    public float speed = 8f;

    void Start()
    {
        _input = GetComponent<PlayerInput>();
        playerRigidbody = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        float xSpeed = _input.X * speed;
        float zSpeed = _input.Y * speed;

        playerRigidbody.velocity = new Vector3(xSpeed, 0f, zSpeed);
    }
}
