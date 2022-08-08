using System.Collections;
using UnityEngine;
using UnityEngine.UI;


public class WeaponAssaultRifle : WeaponBase
{
    [Header("Fire Effects")]
    public      GameObject              muzzleFlashEffect;      // �ѱ� ����Ʈ (On / Off)

    [Header("Spawn Points")]
    public      Transform               casingSpawnPoint;       // "ź��" ���� ��ġ 
    public      Transform               bulletSpawnPoint;       // "�Ѿ�" ���� ��ġ

    [Header("Audio Clips")]
    public      AudioClip               audioClipTakeOutWeapon; // ���� "����" ����
    public      AudioClip               audioClipFire;          // ���� "����" ����
    public      AudioClip               audioClipReload;        // ���� "������" ����

    [Header("Aim UI")]
    public      Image                   imageAim;               // default / aim ��忡 ���� Aim �̹��� Ȱ�� / ��Ȱ��

    private     Camera                  mainCamera;             // ���� �߻�

    private     bool                    isModeChange = false;   // ��� ��ȯ ���� üũ��
    private     float                   defaultModeFOV = 60;    // �⺻��忡�� ī�޶� FOV
    private     float                   aimModeFOV = 30;        // AIM��忡���� ī�޶� FOV


    private void Awake()
    {
        base.Setup();
        mainCamera = Camera.main;
    }

    private void OnEnable()
    {
        PlaySound(audioClipTakeOutWeapon);
        muzzleFlashEffect.SetActive(false);
        ResetVariables();
    }

    public override void StartWeaponAction(int type = 0)
    {
        // ��� ��ȯ���̸� ���� �׼��� �� �� ����.
        if (isModeChange == true) return;

        // ���콺 ���� Ŭ�� (���� ����)
        if (type == 0)
        {
            if (weaponSetting.isAutomaticAttack == true)
            {
                // ���� ����
                isAttack = true;
                StartCoroutine("OnAttackLoop");
            }

            else
            {
                // �ܹ� ����
                OnAttack();
            }
        }

        // ���콺 ������ Ŭ�� (��� ��ȯ)
        else
        {
            // ���� ���� ���� ��� ��ȯ�� �� �� ����.
            if (isAttack == true) return;

            StartCoroutine("OnModeChange");
        }
    }

    public override void StopWeaponAction(int type = 0)
    {
        // ���콺 ���� Ŭ�� (���� ����)
        if (type == 0)
        {
            isAttack = false;
            StopCoroutine("OnAttackLoop");
        }
    }

    private IEnumerator OnAttackLoop()
    {
        while (true)
        {
            OnAttack();

            yield return null;
        }
    }

    public void OnAttack()
    {
        if (IsOnOverHeat == false)
        {
            HeatWeapon();
        }

        if (heatingValue > 99.9 && IsOnOverHeat == false)
        {
            IsOnOverHeat = true;
            StartCoroutine("DeactiveOverHeat");
        }

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
            string animation = animator.AimModeIs == true ? "AimFire" : "Fire";
            animator.Play(animation, -1, 0);

            // �ѱ� ����Ʈ ��� ( default mode �� ���� ��� )
            if (animator.AimModeIs == false)
            {
                StartCoroutine("OnMuzzleFlashEffect");
            }

            // ���� ���� ���
            PlaySound(audioClipFire);

            // ź�� ����
            CasingPool.SpawnCasing(casingSpawnPoint.position, transform.right);

            // ������ �߻��� ���ϴ� ��ġ ���� (+Impact Effect)
            TwoStepRaycast();
        }
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
            Debug.Log(hit.collider.tag);

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

    private IEnumerator OnModeChange()
    {
        float current = 0;
        float percent = 0;
        float time = 0.35f;

        animator.AimModeIs = !animator.AimModeIs;
        imageAim.enabled = !imageAim.enabled;

        float start = mainCamera.fieldOfView;
        float end = animator.AimModeIs == true ? aimModeFOV : defaultModeFOV;

        isModeChange = true;

        while (percent < 1)
        {
            current += Time.deltaTime;
            percent = current / time;

            // mode�� ���� ī�޶��� �þ߰��� ����
            mainCamera.fieldOfView = Mathf.Lerp(start, end, percent);

            yield return null;
        }

        isModeChange = false;
    }

    private IEnumerator OnMuzzleFlashEffect()
    {
        muzzleFlashEffect.SetActive(true);

        yield return new WaitForSeconds(weaponSetting.attackRate * 0.3f);

        muzzleFlashEffect.SetActive(false);
    }

    private void ResetVariables()
    {
        isReload = false;
        isAttack = false;
        isModeChange = false;
    }

    private IEnumerator DeactiveOverHeat()
    {
        yield return new WaitForSeconds(DisableWeaponTime);

        IsOnOverHeat = false;
    }

}