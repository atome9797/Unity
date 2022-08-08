using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    [Header("Input KeyCodes")]
    public      KeyCode                     KeyCodeRun = KeyCode.LeftShift;     // �޸��� Ű
    public      KeyCode                     KeyCodeJump = KeyCode.Space;        // ���� Ű
    //public      KeyCode                     keyCodeReload = KeyCode.R;        // ź ������ Ű

    [Header("Audio Clips")]
    public      AudioClip                   audioClipWalk;                      // �ȱ� ����
    public      AudioClip                   audioClipRun;                       // �޸��� ����
    
    private     RotateToMouse               rotateToMouse;                      // ���콺 �̵����� ī�޶� ȸ��
    private     PlayerMovement              movement;                           // Ű���� �Է����� �÷��̾� �̵�, ����
    private     Status                      status;                             // �̵��ӵ� ���� �÷��̾� ����
    private     AudioSource                 audioSource;                        // ���� ��� ����
    public     WeaponBase                  Weapon;                             // ��� ���Ⱑ ��ӹ޴� ��� Ŭ����

    void Awake()
    {
        // ���콺 Ŀ���� ������ �ʰ� �����ϰ�, ���� ��ġ�� ������Ų��.
        Cursor.visible      = false;
        Cursor.lockState    = CursorLockMode.Locked;

        rotateToMouse       = GetComponent<RotateToMouse>();
        movement            = GetComponent<PlayerMovement>();
        status              = GetComponent<Status>();
        audioSource         = GetComponent<AudioSource>();
    }

    void Update()
    {
        UpdateRotate();
        UpdateMove();
        UpdateJump();
        UpdateWeaponAction();
    }

    void UpdateRotate()
    {
        float mouseX = Input.GetAxis("Mouse X");
        float mouseY = Input.GetAxis("Mouse Y");

        rotateToMouse.UpdateRotate(mouseX, mouseY);
    }

    void UpdateMove()
    {
        float x = Input.GetAxisRaw("Horizontal");
        float z = Input.GetAxisRaw("Vertical");

        // �̵��� �� �� (�ȱ� or �ٱ�)
        if (x != 0 || z != 0)
        {
            bool isRun = false;

            // ���̳� �ڷ� �̵��� ���� �޸� �� ����.
            if (z > 0)
            {
                isRun = Input.GetKey(KeyCodeRun);
            }
            movement.MoveSpeed = isRun == true ? status.RunSpeed : status.WalkSpeed;
            Weapon.Animator.MoveSpeed = isRun == true ? 1 : 0.5f;
            audioSource.clip   = isRun == true ? audioClipRun : audioClipWalk;

            // ����Ű �Է� ���δ� �� ������ Ȯ���ϱ� ������
            // ������� ���� �ٽ� ������� �ʵ��� isPlaying���� üũ�Ͽ� ���
            if (audioSource.isPlaying == false)
            {
                audioSource.loop = true;
                audioSource.Play();
            }
        }

        // ���ڸ��� �������� ��
        else
        {
            //movement.MoveSpeed = 0;
            Weapon.Animator.MoveSpeed = 0;

            // ������ �� ���尡 ������̸� ����
            if (audioSource.isPlaying == true)
            {
                audioSource.Stop();
            }
        }

        movement.MoveTo(new Vector3(x, 0, z));
    }

    void UpdateJump()
    {
        if (Input.GetKeyDown(KeyCodeJump))
        {
            movement.Jump();
        }
    }

    void UpdateWeaponAction()
    {
        if (Weapon.IsOnOverHeat == false)
        {
            WeaponSwitchSystem Currentweapon = GetComponent<WeaponSwitchSystem>();
            WeaponBase AK47 = Currentweapon.weapons[0];

            if (Weapon == Currentweapon.weapons[0]) // ���� ����ִ� ���Ⱑ ���Ʈ �������϶�
            {
                AK47.AircoolingWeapon();
            }

            else // ���� ����ִ� ���Ⱑ �������϶�, 
            {
                Weapon.heatingValue = 0;

                if (AK47.IsOnOverHeat == true)
                {
                    AK47.IsOnOverHeat = false;
                }

                if (AK47.IsOnOverHeat == false)
                {
                    AK47.AircoolingWeapon();
                }
            }
        }

        if (Input.GetMouseButtonDown(0))
        {
            Weapon.StartWeaponAction();
        }

        else if (Input.GetMouseButtonUp(0))
        {
            Weapon.StopWeaponAction();
        }

        if (Input.GetMouseButtonDown(1))
        {
            Weapon.StartWeaponAction(1);
        }

        else if (Input.GetMouseButtonUp(1))
        {
            Weapon.StopWeaponAction(1);
        }
    }

    public void TakeDamage(int damage)
    {
        bool isDie = status.DecreaseHP(damage);

        if (isDie == true)
        {
            Debug.Log("GameOver");
        }
    }

    public void SwitchingWeapon(WeaponBase newWeapon)
    {
        Weapon = newWeapon;
    }

}
