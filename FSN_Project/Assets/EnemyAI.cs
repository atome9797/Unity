using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum EnemyState
{
    Idle, //대기 
    Walk, //순찰
    Run, //추적
    Attack, //공격
    KnockBack //피격
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


    //매 프레임 마다 수행해야 하는 동작 (상태가 바뀔때 마다)
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
        //한번만 수행해야 하는 동작 (상태가 바뀔때 마다) 
        Debug.Log("대기 상태 시작");
        
        while(true)
        {
            yield return new WaitForSeconds(2f);

            //시간마다 수행해야 하는 동작 (상태가 바뀔때 마다)
            ChangeState(EnemyState.Walk);
            yield break;
        }    
        
    }

    IEnumerator CoroutineWalk()
    {
        //한번만 수행해야 하는 동작 (상태가 바뀔때 마다) 
        Debug.Log("순찰 상태 시작");

        while (true)
        {
            yield return new WaitForSeconds(2f);

            //시간마다 수행해야 하는 동작 (상태가 바뀔때 마다)
            ChangeState(EnemyState.Attack);
        }

    }

    IEnumerator CoroutineRun()
    {
        //한번만 수행해야 하는 동작 (상태가 바뀔때 마다) 

        while (true)
        {
            yield return new WaitForSeconds(2f);
        }

        //시간마다 수행해야 하는 동작 (상태가 바뀔때 마다)
    }

    IEnumerator CoroutineAttack()
    {
        //한번만 수행해야 하는 동작 (상태가 바뀔때 마다) 

        while (true)
        {
            yield return new WaitForSeconds(2f);
        }

        //시간마다 수행해야 하는 동작 (상태가 바뀔때 마다)
    }

    IEnumerator CoroutineKnockBack()
    {
        //한번만 수행해야 하는 동작 (상태가 바뀔때 마다) 

        while (true)
        {
            yield return new WaitForSeconds(2f);
        }

        //시간마다 수행해야 하는 동작 (상태가 바뀔때 마다)
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
