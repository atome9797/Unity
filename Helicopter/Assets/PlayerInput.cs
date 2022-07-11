using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInput : MonoBehaviour
{
    public float X  {get; private set;}
    public float Y  {get; private set;}

    // Start is called before the first frame update
    void Start()
    {
        Debug.Log("PlayerInput Start");
    }

    // Update is called once per frame
    void Update()
    {
        Debug.Log("PlayerInput Update");
        X = Y = 0f;
        X = Input.GetAxis("Horizontal");
        Y = Input.GetAxis("Vertical");
    }
}
