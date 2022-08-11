using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;


public enum EnemyState
{
    None,       // 
    Idle,       // ���
    Walk,       // ���� patrol
    Run,        // ���� trace
    Attack,     // ����
    KnockBack,   // �ǰ� damaged
    Hide        // ����
}

public class EnemyAI : MonoBehaviour
{

    public UnityEvent onEvent = new UnityEvent();


    public EnemyState state;
    public EnemyState prevState = EnemyState.None;

    Animator animator;

    // �̵�����
    Vector3 targetPos;
    float moveSpeed = 1f;
    float rotationSpeed = 1f;

    // �� Ž�� ����
    public GameObject target;
    bool isFindEnemy = false;
    Camera eye;
    Plane[] eyePlanes;

    //���� �浹 ����
    GameObject weaponCollider;

    //����
    DissolveController dissovceController;

    //�ε�ģ ������ ��ȯ
    Transform HitTransform;

    public void Activate()
    {
        //transform ��ġ�� �̵��ϰ� ��
    }

    private void OnEnable()
    {
        onEvent.AddListener(Activate);
    }


    //�÷��̾�� �浹������ ������ ���� �ߵ����� , �浿 �������� �̵��ϵ��� �����ϱ�
    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player")
        {
            HitTransform = other.transform;
            onEvent.Invoke(); //�̺�Ʈ �ߵ���Ŵ
        }
    }


    private void Awake()
    {
        //Json ������ ���� ����
        DataManager.Instance.SaveGameData();
        //Ŭ���� �ν��Ͻ� ���� => �̶� �̱��� ��ü ������ => �̶� CSV ���� �о��
        MonsterData data = DataManager.Instance.GetMonsterData(2);
        moveSpeed = data.moveSpeed;
        rotationSpeed = data.rotationSpeed;
    }


    // Start is called before the first frame update
    void Start()
    {
        dissovceController = GetComponentInChildren<DissolveController>();
        dissovceController.ChangeState(DissolveController.State.Hide_Off);
        animator = GetComponent<Animator>();
        eye = transform.GetComponentInChildren<Camera>();

        //sphereColliders�� ���� ���� ������Ʈ�� �ҷ��´�.
        SphereCollider[] sphereColliders = GetComponentsInChildren<SphereCollider>();
        foreach(var sphereCollider in sphereColliders)
        {
            //sphereCollider.name�� sphereCollider.gameObject.name�� �����
            //������Ʈ�� �̸��� �ްԵ�
            if (sphereCollider.name == "WeaponCollider")
            {
                weaponCollider = sphereCollider.gameObject;
                break;
            }
        }

        weaponCollider.SetActive(false);
        ChangeState(EnemyState.Idle);
    }

    // Update is called once per frame
    void Update()
    {
        switch (state)
        {
            case EnemyState.Idle: UpdateIdle(); break;
            case EnemyState.Walk: UpdateWalk(); break;
            case EnemyState.Run: UpdateRun(); break;
            case EnemyState.Attack: UpdateAttack(); break;
            case EnemyState.KnockBack: UpdateKnockBack(); break;
            case EnemyState.Hide: UpdateHide(); break;
        }
    }

    #region UpdateDetail
    // �� �����Ӹ��� �����ؾ� �ϴ� ���� (���°� �ٲ� �� ����)
    void UpdateIdle()
    {

    }
    void UpdateWalk()
    {
        if (IsFindEnemy())
        {
            ChangeState(EnemyState.Run);
            return;
        }

        // ���������� �̵��ϴ� �ڵ�
        Vector3 dir = targetPos - transform.position;
        if (dir.sqrMagnitude <= 0.2f)
        {
            ChangeState(EnemyState.Idle);
            return;
        }

        var targetRotation = Quaternion.LookRotation(targetPos - transform.position, Vector3.up);
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, rotationSpeed * Time.deltaTime);

        transform.position += transform.forward * moveSpeed * Time.deltaTime;
    }
    void UpdateRun()
    {
        // ���������� �̵��ϴ� �ڵ�
        Vector3 dir = targetPos - transform.position;
        //Debug.Log("Ÿ�ٰŸ� : " + dir.magnitude);
        if (dir.magnitude <= 2.0f)
        {
            ChangeState(EnemyState.Attack);
            return;
        }

        var targetRotation = Quaternion.LookRotation(targetPos - transform.position, Vector3.up);
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, rotationSpeed * 2f * Time.deltaTime);

        transform.position += transform.forward * moveSpeed * 2f * Time.deltaTime;
    }
    void UpdateAttack()
    {

    }
    void UpdateKnockBack()
    {

    }
    
    void UpdateHide()
    {

    }
    #endregion


    #region CoroutineDetail
    IEnumerator CoroutineIdle()
    {
        // �ѹ��� �����ؾ� �ϴ� ���� (���°� �ٲ� �� ����)
        Debug.Log("��� ���� ����");
        animator.SetBool("IsIdle", true);

        while (true)
        {
            yield return new WaitForSeconds(2f);
            // �ð����� �����ؾ� �ϴ� ���� (���°� �ٲ� �� ����)
            ChangeState(EnemyState.Hide);
            yield break;
        }
    }
    IEnumerator CoroutineWalk()
    {
        // �ѹ��� �����ؾ� �ϴ� ���� (���°� �ٲ� �� ����)
        Debug.Log("���� ���� ����");
        animator.SetBool("IsWalk", true);
        dissovceController.ChangeState(DissolveController.State.Hide_Off);

        // ������ ����
        targetPos = transform.position + new Vector3(Random.Range(-7f, 7f), 0f, Random.Range(-7f, 7f));

        while (true)
        {
            yield return new WaitForSeconds(10f);
            // �ð����� �����ؾ� �ϴ� ���� (���°� �ٲ� �� ����)
            ChangeState(EnemyState.Idle);
        }
    }
    IEnumerator CoroutineRun()
    {
        // �ѹ��� �����ؾ� �ϴ� ���� (���°� �ٲ� �� ����)
        Debug.Log("���� ���� ����");
        animator.SetBool("IsRun", true);
        targetPos = target.transform.position;

        dissovceController.ChangeState(DissolveController.State.Hide_Off);

        while (true)
        {
            yield return new WaitForSeconds(5f);
            // �ð����� �����ؾ� �ϴ� ���� (���°� �ٲ� �� ����)

        }
    }
    IEnumerator CoroutineAttack()
    {
        // �ѹ��� �����ؾ� �ϴ� ���� (���°� �ٲ� �� ����)
        animator.SetTrigger("IsAttack");

        yield return new WaitForSeconds(1f);
        ChangeState(EnemyState.Idle);
        yield break;
    }
    IEnumerator CoroutineKnockBack()
    {
        // �ѹ��� �����ؾ� �ϴ� ���� (���°� �ٲ� �� ����)

        while (true)
        {
            yield return new WaitForSeconds(2f);
            // �ð����� �����ؾ� �ϴ� ���� (���°� �ٲ� �� ����)

        }
    } 
    
    IEnumerator CoroutineHide()
    {
        // �ѹ��� �����ؾ� �ϴ� ���� (���°� �ٲ� �� ����)
        dissovceController.ChangeState(DissolveController.State.Hide_On);

        yield return new WaitForSeconds(3f);
        // �ð����� �����ؾ� �ϴ� ���� (���°� �ٲ� �� ����)
        ChangeState(EnemyState.Walk);
        yield break;
    }
    #endregion

    void ChangeState(EnemyState nextState)
    {
        if (prevState == nextState) return;

        StopAllCoroutines();

        prevState = state;
        state = nextState;
        animator.SetBool("IsIdle", false);
        animator.SetBool("IsWalk", false);
        animator.SetBool("IsRun", false);
        animator.SetBool("IsAttack", false);
        animator.SetBool("IsKnockBack", false);




        switch (state)
        {
            case EnemyState.Idle: StartCoroutine(CoroutineIdle()); break;
            case EnemyState.Walk: StartCoroutine(CoroutineWalk()); break;
            case EnemyState.Run: StartCoroutine(CoroutineRun()); break;
            case EnemyState.Attack: StartCoroutine(CoroutineAttack()); break;
            case EnemyState.KnockBack: StartCoroutine(CoroutineKnockBack()); break;
            case EnemyState.Hide: StartCoroutine(CoroutineHide()); break;
        }
    }

    bool IsFindEnemy()
    {
        if (!target.activeSelf) return false;

        Bounds targetBounds = target.GetComponentInChildren<SkinnedMeshRenderer>().bounds;
        eyePlanes = GeometryUtility.CalculateFrustumPlanes(eye);
        isFindEnemy = GeometryUtility.TestPlanesAABB(eyePlanes, targetBounds);

        return isFindEnemy;
    }

    void OnAttack(AnimationEvent animationEvent)
    {
        Debug.Log("OnAttack : " + animationEvent.intParameter);
        
        if(animationEvent.intParameter == 1)
        {
            weaponCollider.SetActive(true);
        }
        else
        {
            weaponCollider.SetActive(false);
        }
    }
}
