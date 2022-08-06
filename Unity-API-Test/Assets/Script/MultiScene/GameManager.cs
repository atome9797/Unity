using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class GameManager : SingletonBehavior<GameManager>
{
    public int nowStage { get; private set; } // 게임 오버 상태
    int click;
    GameObject StageManager;


    void Start()
    {
        StageManager = GameObject.Find("stagenum");
        nowStage = StageManager.GetComponent<SceneChange>().stageNum;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
