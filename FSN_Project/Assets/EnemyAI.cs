using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum EnemyState
{
    Idle, //��� 
    Walk, //����
    Run, //����
    Attack, //����
    KnockBack //�ǰ�
}

public class EnemyAI: MonoBehaviour
{
    public EnemyState state;

    void Start()
    {
        ChangeState(EnemyState.Idle);
    }

    void Update()
    {
        switch(state)
        {
            case EnemyState.Idle: UpdateIdle(); break;
            case EnemyState.Walk: UpdateWalk(); break;
            case EnemyState.Run: UpdateRun(); break;
            case EnemyState.Attack: UpdateAttack(); break;
            case EnemyState.KnockBack: UpdateKnockBack(); break;
        }    
    }


    //�� ������ ���� �����ؾ� �ϴ� ���� (���°� �ٲ� ����)
    void UpdateIdle()
    {

    }

    void UpdateWalk()
    {

    }

    void UpdateRun()
    {

    }

    void UpdateAttack()
    {

    }

    void UpdateKnockBack()
    {

    }



    IEnumerator CoroutineIdle()
    {
        //�ѹ��� �����ؾ� �ϴ� ���� (���°� �ٲ� ����) 
        Debug.Log("��� ���� ����");
        
        while(true)
        {
            yield return new WaitForSeconds(2f);

            //�ð����� �����ؾ� �ϴ� ���� (���°� �ٲ� ����)
            ChangeState(EnemyState.Walk);
            yield break;
        }    
        
    }

    IEnumerator CoroutineWalk()
    {
        //�ѹ��� �����ؾ� �ϴ� ���� (���°� �ٲ� ����) 
        Debug.Log("���� ���� ����");

        while (true)
        {
            yield return new WaitForSeconds(2f);

            //�ð����� �����ؾ� �ϴ� ���� (���°� �ٲ� ����)
            ChangeState(EnemyState.Attack);
        }

    }

    IEnumerator CoroutineRun()
    {
        //�ѹ��� �����ؾ� �ϴ� ���� (���°� �ٲ� ����) 

        while (true)
        {
            yield return new WaitForSeconds(2f);
        }

        //�ð����� �����ؾ� �ϴ� ���� (���°� �ٲ� ����)
    }

    IEnumerator CoroutineAttack()
    {
        //�ѹ��� �����ؾ� �ϴ� ���� (���°� �ٲ� ����) 

        while (true)
        {
            yield return new WaitForSeconds(2f);
        }

        //�ð����� �����ؾ� �ϴ� ���� (���°� �ٲ� ����)
    }

    IEnumerator CoroutineKnockBack()
    {
        //�ѹ��� �����ؾ� �ϴ� ���� (���°� �ٲ� ����) 

        while (true)
        {
            yield return new WaitForSeconds(2f);
        }

        //�ð����� �����ؾ� �ϴ� ���� (���°� �ٲ� ����)
    }


    void ChangeState(EnemyState nextState)
    {
        StopAllCoroutines();

        state = nextState;

        switch(state)
        {
            case EnemyState.Idle: StartCoroutine(CoroutineIdle()); break;
            case EnemyState.Walk: StartCoroutine(CoroutineWalk()); break;
            case EnemyState.Run: StartCoroutine(CoroutineRun()); break;
            case EnemyState.Attack: StartCoroutine(CoroutineAttack()); break;
            case EnemyState.KnockBack: StartCoroutine(CoroutineKnockBack()); break;
        }    
    }

}
