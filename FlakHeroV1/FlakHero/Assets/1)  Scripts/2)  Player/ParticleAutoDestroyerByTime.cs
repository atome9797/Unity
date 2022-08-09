using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleAutoDestroyerByTime : MonoBehaviour
{
    private ParticleSystem particle;

    private void Awake()
    {
        //getComponent�� �ش� ������Ʈ(��ƼŬ ������Ʈ)�� �����´�. 
        particle = GetComponent<ParticleSystem>();
    }

    private void Update()
    {
        //�������� �ƴҶ� ���� ������Ʈ�� �����ϰ� �Ѵ�.
        if ( particle.isPlaying == false)
        {
            Destroy(gameObject);
        }
    }
}