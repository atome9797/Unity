using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Helicopter : MonoBehaviour
{

    public GameObject ProPeller;
    public GameObject TailProPeller;
    public float PropellerSpeed = 1f;
    private bool engineUp = false;

    // Start is called before the first frame update
    void Start()
    {
        Rigidbody rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            engineUp = true;
        }

        if(engineUp)
        {
            rotateProPeller();
            

        }

    }



    void rotateProPeller()
    {
        if (PropellerSpeed < 10f)
        {
            PropellerSpeed += PropellerSpeed * Time.deltaTime;
        }

        ProPeller.transform.Rotate(0f, PropellerSpeed, 0f);
        TailProPeller.transform.Rotate(0f, PropellerSpeed, 0f);
    }
}
