using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Vector : MonoBehaviour
{
    int sightAngle = 135;
    void Start()
    {
        Vector2 player = new Vector2(0, 0); //�ͷ� - �÷��̾��� ����
        Vector2 forward = new Vector2(0, 10); //�ͷ� ����- �÷��̾��� �ü�����
        Vector2 G = new Vector2(1, 5);
        Vector2 B = new Vector2(100, 1);
        Vector2 O = new Vector2(-1, -1);


        Debug.Log("G is Visible: " + isTargetInSight(player, G, forward)); // True, theta = 11, dotProduct: 0.9805807
        Debug.Log("B is Visible: " + isTargetInSight(player, B, forward)); // False, theta = 89, dotProduct: 0.009999501
        Debug.Log("O is Visible: " + isTargetInSight(player, O, forward)); // False, theta = 135, dotProduct: -0.7071068
    }

    bool isTargetInSight(Vector2 player, Vector2 target, Vector2 forward)
    {
        Vector2 targetDirection = (target - player).normalized;
        float dotProduct = Vector2.Dot(forward.normalized, targetDirection);
        // ������ ���� > 0 �̸� �÷��̾� �տ��ְ�, < 0�̸� �ڿ��ִ�.
        Debug.Log("dotProduct: " + dotProduct);
        // Target�� Player������ ����
        float theta = Mathf.Acos(dotProduct) * Mathf.Rad2Deg;
        Debug.Log("theta: " + theta);
        // �þ߰� �ȿ��ִ��� ����
        return theta <= sightAngle / 2;
    }
}