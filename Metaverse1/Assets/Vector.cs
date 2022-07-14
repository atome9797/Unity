using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Vector : MonoBehaviour
{
    int sightAngle = 135;
    void Start()
    {
        Vector2 player = new Vector2(0, 0); //터렛 - 플레이어의 벡터
        Vector2 forward = new Vector2(0, 10); //터렛 범위- 플레이어의 시선벡터
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
        // 내적의 값이 > 0 이면 플레이어 앞에있고, < 0이면 뒤에있다.
        Debug.Log("dotProduct: " + dotProduct);
        // Target과 Player사이의 각도
        float theta = Mathf.Acos(dotProduct) * Mathf.Rad2Deg;
        Debug.Log("theta: " + theta);
        // 시야각 안에있는지 여부
        return theta <= sightAngle / 2;
    }
}