using System.Collections;
using UnityEngine;

public class WeaponRevolver : WeaponBase
{
    [Header("Fire Effects")]
    public GameObject muzzleFlashEffect;

    [Header("Spawn Points")]
    public Transform bulletSpawnPoint;

    [Header("Audio Clips")]
    public AudioClip audioClipFire;
    private Camera mainCamera;

    private void OnEnable()
    {
        muzzleFlashEffect.SetActive(false);

        ResetVariables();
    }

    private void Awake()
    {
        base.Setup();
        mainCamera = Camera.main;
    }

    public override void StartWeaponAction(int type = 0)
    {
        if (type == 0 && isAttack == false && isReload == false)
        {
            OnAttack();
        }

        base.Setup();

    }

    public override void StopWeaponAction(int type = 0)
    {
        isAttack = false;
    }

    public void OnAttack()
    {
        if (Time.time - lastAttackTime > weaponSetting.attackRate)
        {
            // �ٰ����� ���� ������ �� ����.
            if (animator.MoveSpeed > 0.5f || IsOnOverHeat == true)
            {
                return;
            }

            // �����ֱⰡ �Ǿ�� ���� �� �� �ֵ��� �ϱ� ���� ���� �ð� ����
            lastAttackTime = Time.time;


            // ���� �ִϸ��̼� ���
            animator.Play("Fire", -1, 0);

            // �ѱ� ����Ʈ ���
            StartCoroutine("OnMuzzleFlashEffect");

            // ���� ���� ���
            PlaySound(audioClipFire);

            // ������ �߻��� ���ϴ� ��ġ ����
            TwoStepRaycast();
        }
    }

    private IEnumerator OnMuzzleFlashEffect()
    {
        muzzleFlashEffect.SetActive(true);

        yield return new WaitForSeconds(weaponSetting.attackRate * 0.3f);

        muzzleFlashEffect.SetActive(false);
    }

    private void TwoStepRaycast()
    {
        Ray ray;
        RaycastHit hit;
        Vector3 targetPoint = Vector3.zero;

        // ȭ���� �߾� ��ǥ (Aim �������� Raycast ����)
        ray = mainCamera.ViewportPointToRay(Vector2.one * 0.5f);

        // ���� ��Ÿ� (attackDistance) �ȿ� �ε����� ������Ʈ�� ������ targetPoint�� ������ �ε��� ��ġ
        if (Physics.Raycast(ray, out hit, weaponSetting.attackDistance))
        {
            targetPoint = hit.point;
        }

        // ���� ��Ÿ� �ȿ� �ε����� ������Ʈ�� ������ targetPoint�� �ִ� ��Ÿ� ��ġ
        else
        {
            targetPoint = ray.origin + ray.direction * weaponSetting.attackDistance;
        }

        Debug.DrawRay(ray.origin, ray.direction * weaponSetting.attackDistance, Color.red);

        // ù��° Raycast�������� ����� targetPoint�� ��ǥ�������� �����ϰ�,
        // �ѱ��� ������������ �Ͽ� Raycast ����
        Vector3 attackDirection = (targetPoint - bulletSpawnPoint.position).normalized;

        int layerMask = 1 << 6; // player layer

        if (Physics.Raycast(bulletSpawnPoint.position, attackDirection, out hit, weaponSetting.attackDistance, layerMask))
        {
            ImpactPool.SpawnImpact(hit);

            if (hit.transform.CompareTag("EnemyA") || hit.transform.CompareTag("EnemyB"))
            {
                hit.transform.GetComponent<EnemyAircraft>().TakeDamage(weaponSetting.damage);
            }

            else if (hit.transform.CompareTag("DropBox"))
            {
                hit.transform.GetComponent<SupplyBox>().Destruction();
            }
        }

        Debug.DrawRay(bulletSpawnPoint.position, attackDirection * weaponSetting.attackDistance, Color.blue);
    }

    private void ResetVariables()
    {
        isReload = false;
        isAttack = false;
    }

}
