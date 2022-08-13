using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyMovement : MonoBehaviour
{
    public float MoveSpeed = 8f;

    private Transform _target;

    //target�� ������ ���� ��ü�� ��ġ�� ����
    public void MoveTo(Transform target)
    {
        if(_target != null)
        {
            return;
        }

        _target = target;

        StartCoroutine(moveToHelper());
    }

    //ai�� �ڵ����� �̵��ϱ� ���� �ڸ�ƾ(�ڱ� �ڽ��̸� �������� ����, �ڱ� �ڽ��� �����Ǿ� ���� ����)
    private IEnumerator moveToHelper()
    {
        Debug.Assert(_target != null);

        while(true)
        {
            transform.LookAt(_target);

            transform.Translate(0f, 0f, MoveSpeed * Time.deltaTime);

            //�Ÿ��� ������ ����
            if(Vector3.Distance(transform.position, _target.position) <= 1f)
            {
                _target = null;
                break;
            }

            yield return null;
        }
    }


}
