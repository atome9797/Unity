using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInput : MonoBehaviour
{
    // Start is called before the first frame update
    
    public float X { get; private set; } 
    public float Y { get; private set; } 

    // Update is called once per frame
    void Update()
    {
        X = Y = 0f;

        X = Input.GetAxis("Horizontal");
        Y = Input.GetAxis("Vertical");
    }
}
