using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class helecopter : MonoBehaviour
{
    public GameObject Pro;
    public GameObject TailPropeller;
    public Rigidbody PlayerRigidbody;
    public GameObject a1;

    public float MaxPropellerSpeed = 10f;
    private PlayerInput _input;
    private bool _isTurnOn = false;

    // Start is called before the first frame update
    void Start()
    {
        PlayerRigidbody = GetComponent<Rigidbody>();
        _input = GetComponent<PlayerInput>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            _isTurnOn = !_isTurnOn;
            a1.transform.Rotate(30f, 0f, 0f);
        }

        if(_isTurnOn)
        {
            onTurnOn();
        }
        else
        {
            onTurnOff();
            
        }

        if (Input.GetKey(KeyCode.LeftShift))
        {
            PlayerRigidbody.AddForce(_input.X, 0f, _input.Y);
        }


    }

    private float _propellerSpeed = 0f;
    private void onTurnOn()
    {
        _propellerSpeed = Mathf.Lerp(_propellerSpeed, MaxPropellerSpeed, Time.deltaTime); 
                                                                        //유니티 50프레임
                                                                        // 0.02초
                                                                        // 점점 범위가 높아지                                                   면서 스피드가 높아                                                              짐
        Pro.transform.Rotate(0f, _propellerSpeed, 0f); //1초에 300도 회전함
        TailPropeller.transform.Rotate(_propellerSpeed, 0f , 0f); //1초에 300도 회전함

        if(MaxPropellerSpeed - _propellerSpeed > 0.5f)
        {
            return;
        }

        if(PlayerRigidbody.useGravity)
        {
            PlayerRigidbody.useGravity = false;
        }

        if(_input.Y == 0)
        {
            PlayerRigidbody.velocity = Vector3.zero;
        }
        else
        {
            PlayerRigidbody.AddForce(0f, 1.2f * _input.Y, 0f);
        }

        transform.Rotate(0f, _input.X * 1.5f, 0f);

    }

    private void onTurnOff()
    {
        _propellerSpeed = Mathf.Lerp(_propellerSpeed, 0f, Time.deltaTime);
                                        // 0으로 줄어들게 함
        Pro.transform.Rotate(0f, _propellerSpeed, 0f); //1초에 300도 회전함
        TailPropeller.transform.Rotate(_propellerSpeed, 0f, 0f); //1초에 300도 회전함

        if (PlayerRigidbody.useGravity == false)
        {
            PlayerRigidbody.useGravity = true;
        }
    }
}
