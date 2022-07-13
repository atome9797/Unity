using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AutoTarget : MonoBehaviour
{
    public bool IsTargetOn { get; private set; } 
    
    //타겟이라는 게임 오블젝트 생성 => 타겟은 플레이어의 위치를 저장함
    public GameObject Target { get; private set; }

    //충돌 발생시 실행
    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player")
        {
            IsTargetOn = true;
            Target = other.gameObject;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        IsTargetOn = false;
        Target = null;
    }
}
