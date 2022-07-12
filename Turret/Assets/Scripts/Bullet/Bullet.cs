using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour
{
    public float Speed = 0.01f;
    
    private void Start()
    {
        Destroy(gameObject , 3f);
    }

    private void Update()
    {
        transform.Translate(0f, 0f, Speed);
        //transform.position = new Vector3(0f, 0f, Speed);
    }

    

}
