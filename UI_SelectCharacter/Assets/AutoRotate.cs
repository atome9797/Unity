using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class AutoRotate : MonoBehaviour
{
    public bool IsSelected { get; set; }

    private void OnEnable()
    {
        transform.rotation = Quaternion.Euler(0f, 180f, 0f);
        transform.localScale = new Vector3(2f,2f,2f);
        IsSelected = false;
        StartCoroutine(CoroutineSelectedEffect());
    }


    private void OnDisable()
    {
        StopAllCoroutines();
    }

    private void Start()
    {
        
    }

    IEnumerator CoroutineSelectedEffect()
    {
        float delay = 0f;
        float deltaScale = 2f;

        while(true)
        {
            yield return new WaitWhile(() => IsSelected == false);

            deltaScale = Mathf.Clamp(deltaScale + Time.deltaTime * 2f, 2f, 3f);
            transform.localScale = new Vector3(deltaScale, deltaScale, deltaScale);

            transform.rotation = Quaternion.RotateTowards(transform.rotation, Quaternion.Euler(0f,180f, 0f), 10f);
            delay += Time.deltaTime;
            
            if(deltaScale >= 3f && delay >= 1.5f)
            {
                SceneManager.LoadScene(0);
                yield break;
            }

        }
    }

}
