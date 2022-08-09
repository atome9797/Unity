using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleAutoDestroyerByTime : MonoBehaviour
{
    private ParticleSystem particle;

    private void Awake()
    {
        //getComponent로 해당 오브젝트(파티클 컴포넌트)를 가져온다. 
        particle = GetComponent<ParticleSystem>();
    }

    private void Update()
    {
        //실행중이 아닐때 게임 오브젝트를 삭제하게 한다.
        if ( particle.isPlaying == false)
        {
            Destroy(gameObject);
        }
    }
}