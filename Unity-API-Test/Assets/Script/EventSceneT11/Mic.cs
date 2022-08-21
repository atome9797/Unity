using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Mic : MonoBehaviour
{



    /*   public AudioClip aud;
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

           Debug.Log(samples.Length);

           float sum = 0;
           for(int i  = 0; i < samples.Length; i++)
           {
               sum += samples[i] * samples[i];
           }

           rmsValue = Mathf.Sqrt(sum / samples.Length);
           rmsValue = rmsValue * modulate;
           rmsValue = Mathf.Clamp(rmsValue, 0, 100);
           resultValue = Mathf.RoundToInt(rmsValue);

           if(resultValue < cutValue)
           {
               resultValue = 0;
           }
       }*/

    public int sampleWindow = 64;

    public float GetLoudnessDromAudioClip(int clipPosition, AudioClip clip)
    {
        int startPosition = clipPosition - sampleWindow;
      
        if(startPosition < 0)
        {
            return 0;
        }
        float[] waveData = new float[sampleWindow];
        clip.GetData(waveData, startPosition);

        //compute loudnewss
        float totalLoudness = 0;

        for(int i = 0; i < sampleWindow; i++)
        {
            totalLoudness += Mathf.Abs(waveData[i]);
        }

        return totalLoudness / sampleWindow;
    }


}
