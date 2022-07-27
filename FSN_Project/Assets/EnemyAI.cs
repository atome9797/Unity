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


    //�� ������ ���� �����ؾ� �ϴ� ���� (���°� �ٲ� ����)
    void UpdateIdle()
    {

    }

    void UpdateWalk()
    {
        //���������� �̵��ϴ� �ڵ�
        Vector3 dir = targetPos - transform.position;
        if(dir.sqrMagnitude <= 0.2f)
        {
            ChangeState(EnemyState.Idle);
            return;
        }

        //C#���� var ������ => ������ float Ÿ������ ����
        var targetRotation = Quaternion.LookRotation(targetPos - transform.position, Vector3.up);

        //Slerp : ���� ���� ����
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
        //�ѹ��� �����ؾ� �ϴ� ���� (���°� �ٲ� ����) 
        Debug.Log("��� ���� ����");
        animator.SetBool("IsIdle", true);
        animator.SetBool("IsWalk", false);
        
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
        animator.SetBool("IsIdle", false);
        animator.SetBool("IsWalk", true);

        //������ ����
        targetPos  = transform.position + new Vector3(Random.Range(-7f , 7f) , 0f , Random.Range(-7f, 7f));

        while (true)
        {
            yield return new WaitForSeconds(10f);

            //�ð����� �����ؾ� �ϴ� ���� (���°� �ٲ� ����)
            ChangeState(EnemyState.Idle);
        }



    }

    IEnumerator CoroutineRun()
    {
        //�ѹ��� �����ؾ� �ϴ� ���� (���°� �ٲ� ����) 
        Debug.Log("�޸��� ���� ����");
        animator.SetBool("IsRun", true);
        animator.SetBool("IsIdle", false);
        animator.SetBool("IsWalk", false);

        while (true)
        {
            yield return new WaitForSeconds(10f);
            ChangeState(EnemyState.Attack);
        }

        //�ð����� �����ؾ� �ϴ� ���� (���°� �ٲ� ����)
    }

    IEnumerator CoroutineAttack()
    {
        //�ѹ��� �����ؾ� �ϴ� ���� (���°� �ٲ� ����) 
        Debug.Log("�����ϴ� ���� ����");
        animator.SetBool("IsRun", false);
        animator.SetBool("IsIdle", false);
        animator.SetBool("IsWalk", false);
        animator.SetBool("IsAttack", true);

        while (true)
        {
            yield return new WaitForSeconds(10f);
            ChangeState(EnemyState.Idle);
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
