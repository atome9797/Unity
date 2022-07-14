using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EulerTest : MonoBehaviour
{
    public float Speed = 10;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    float X;
    void Update()
    {
        X += Time.deltaTime * Speed;
        transform.rotation = Quaternion.Euler(X,0,0);
    }
}
