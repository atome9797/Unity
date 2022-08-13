using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyMovement : MonoBehaviour
{
    public float MoveSpeed = 8f;

    private Transform _target;

    //target은 데미지 입은 객체의 위치를 받음
    public void MoveTo(Transform target)
    {
        if(_target != null)
        {
            return;
        }

        _target = target;

        StartCoroutine(moveToHelper());
    }

    //ai가 자동으로 이동하기 위한 코르틴(자기 자신이면 움직이지 않음, 자기 자신은 구독되어 있지 않음)
    private IEnumerator moveToHelper()
    {
        Debug.Assert(_target != null);

        while(true)
        {
            transform.LookAt(_target);

            transform.Translate(0f, 0f, MoveSpeed * Time.deltaTime);

            //거리가 가까우면 멈춤
            if(Vector3.Distance(transform.position, _target.position) <= 1f)
            {
                _target = null;
                break;
            }

            yield return null;
        }
    }


}
