using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowCam : MonoBehaviour
{
    public Transform target;
    private Vector3 _distance;
    void Start()
    {
        _distance = transform.position - target.position;
    }

    // Update is called once per frame
    void Update()
    {
        transform.position = _distance + target.position; //∞≈∏Æ∏¶ ¿È¥Ÿ. 
    }
}
