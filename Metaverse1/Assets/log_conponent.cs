using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class log_conponent : MonoBehaviour
{

    public int Number;
    public float Number2;
    public bool IsNumber;
    public string str;
    public Rigidbody rb;

    private void Awake()
    {
        Debug.Log($"Awake 단계에선 할당되었습니다. {rb.mass}");
    }

    private void OnEnable()
    {
        Debug.Log($"OnEnable 단계에선 할당되었습니다. {rb.mass}");
    }


    void Start()
    {
        Debug.Log($"Start 단계에선 할당되었습니다. {rb.mass}");

        //Rigidbody rb = GetComponent<Rigidbody>(); //원하는 컴포넌트를 가져옴 메소드임

        rb.AddForce(500, 200, 0); //start시 힘을 준것 (포물선을 그릴수 있다.)
    }

    void Update()
    {
        
    }



}
