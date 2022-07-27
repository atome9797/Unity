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

    Animator animator;
    Vector3 targetPos;
    Vector3 AttacktargetPos;
    float moveSpeed = 1f;
    float rotationSpeed = 1f;



    void Start()
    {
        animator = GetComponent<Animator>();

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

    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Target")
        {
            AttacktargetPos = other.transform.position;
            ChangeState(EnemyState.Run);
        }
    }


    //매 프레임 마다 수행해야 하는 동작 (상태가 바뀔때 마다)
    void UpdateIdle()
    {

    }

    void UpdateWalk()
    {
        //목적지까지 이동하는 코드
        Vector3 dir = targetPos - transform.position;
        if(dir.sqrMagnitude <= 0.2f)
        {
            ChangeState(EnemyState.Idle);
            return;
        }

        //C#에서 var 지원함 => 각도인 float 타입으로 나옴
        var targetRotation = Quaternion.LookRotation(targetPos - transform.position, Vector3.up);

        //Slerp : 구면 선형 보간
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, rotationSpeed * Time.deltaTime);


        transform.position += transform.forward * moveSpeed * Time.deltaTime;
    }

    void UpdateRun()
    {
        Vector3 dir = AttacktargetPos - transform.position;
        if (dir.sqrMagnitude <= 1f)
        {
            ChangeState(EnemyState.Attack);
            return;
        }

        var targetRotation = Quaternion.LookRotation(AttacktargetPos - transform.position, Vector3.up);
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, rotationSpeed * Time.deltaTime);

        transform.position += transform.forward * moveSpeed * Time.deltaTime;


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
        animator.SetBool("IsIdle", true);
        animator.SetBool("IsWalk", false);
        
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
        animator.SetBool("IsIdle", false);
        animator.SetBool("IsWalk", true);

        //목적지 설정
        targetPos  = transform.position + new Vector3(Random.Range(-7f , 7f) , 0f , Random.Range(-7f, 7f));

        while (true)
        {
            yield return new WaitForSeconds(10f);

            //시간마다 수행해야 하는 동작 (상태가 바뀔때 마다)
            ChangeState(EnemyState.Idle);
        }



    }

    IEnumerator CoroutineRun()
    {
        //한번만 수행해야 하는 동작 (상태가 바뀔때 마다) 
        Debug.Log("달리는 동작 시작");
        animator.SetBool("IsRun", true);
        animator.SetBool("IsIdle", false);
        animator.SetBool("IsWalk", false);

        while (true)
        {
            yield return new WaitForSeconds(10f);
            ChangeState(EnemyState.Attack);
        }

        //시간마다 수행해야 하는 동작 (상태가 바뀔때 마다)
    }

    IEnumerator CoroutineAttack()
    {
        //한번만 수행해야 하는 동작 (상태가 바뀔때 마다) 
        Debug.Log("공격하는 동작 시작");
        animator.SetBool("IsRun", false);
        animator.SetBool("IsIdle", false);
        animator.SetBool("IsWalk", false);
        animator.SetBool("IsAttack", true);

        while (true)
        {
            yield return new WaitForSeconds(10f);
            ChangeState(EnemyState.Idle);
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
