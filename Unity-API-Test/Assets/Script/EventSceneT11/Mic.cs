using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Mic : MonoBehaviour
{
    /*    AudioSource aud;

        void Start()
        {
            aud = GetComponent<AudioSource>();
        }

        public void PlaySnd()
        {
            aud.Play();
        }

        public void RecSnd()
        {
            //Microphone.devices[0] : 현재 영역에 대한 마이크들의 이름을 가져옴
            //마이크가 없을 경우 배열 생성 불가능                             
            aud.clip = Microphone.Start(Microphone.devices[0].ToString(), false, 3, 44100);
        }*/


    public AudioClip aud;
    int sampleRate = 44100;
    private float[] samples;
    public float rmsValue;
    public float modulate;
    public int resultValue;
    public int cutValue;

    private void Start()
    {
        samples = new float[sampleRate];
        aud = Microphone.Start(Microphone.devices[0].ToString(), true, 1, sampleRate);
    }

    private void Update()
    {
        //실수형 배열로 받아옴
        aud.GetData(samples, 0); //-1f ~ 1f

        float sum = 0;
        for(int i  = 0; i < samples.Length; i++)
        {
            sum += samples[i] * samples[i];
        }

        rmsValue = Mathf.Sqrt(sum/ samples.Length);
        rmsValue = rmsValue * modulate;
        rmsValue = Mathf.Clamp(rmsValue, 0, 100);
        resultValue = Mathf.RoundToInt(rmsValue);

        if(resultValue < cutValue)
        {
            resultValue = 0;
        }    
    }


}
