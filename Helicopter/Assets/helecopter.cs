using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class helecopter : MonoBehaviour
{
    public GameObject Pro;
    public Rigidbody PlayerRigidbody;
    private PlayerInput _input;
    public float speed = 0.001f;
    private float delta = 0f;
    
    // Start is called before the first frame update
    void Start()
    {
        PlayerRigidbody = GetComponent<Rigidbody>();
        _input = GetComponent<PlayerInput>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey(KeyCode.Space))
        {
            delta += Time.deltaTime;
            Pro.transform.Rotate(0f, 5f, 0f); //1초에 300도 회전함
            //PlayerRigidbody.velocity = new Vector3(0f, 1f, 0f);
            PlayerRigidbody.AddForce(0f, 0.6f, 0f);
        }
        else
        {
            if(delta > 0)
            {
                Pro.transform.Rotate(0f, 3f, 0f);
                PlayerRigidbody.AddForce(0f, 0.5f, 0f);
                delta -= Time.deltaTime / 5;
            }
        }

        float xSpeed = _input.X * speed;
        float ySpeed = _input.Y * speed;

        //PlayerRigidbody.velocity = new Vector3(xSpeed, 0f, ySpeed);
        
        PlayerRigidbody.AddForce(xSpeed, 0, ySpeed);
        
    }
}
