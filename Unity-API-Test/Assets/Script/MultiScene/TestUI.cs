using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TestUI : MonoBehaviour
{

    private Text page;
    
    // Start is called before the first frame update
    void Start()
    {
        page = gameObject.GetComponent<Text>();
        page.text = $"{GameManager.Instance.nowStage}";
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
