using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHealth : MonoBehaviour
{

    private void Update()
    {
        if(Input.GetKeyDown(KeyCode.Space))
        {
            Die();
        }
    }

    public void Die()
    {
        //게임 오브젝트를 삭제시키면 됨
        gameObject.SetActive(false);  //컴포넌트 메세지 전송안됨
    }

}
