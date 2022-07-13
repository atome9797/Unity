using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using System;

public class GameManager : MonoBehaviour
{
    public TimerText Timer;
    public GameOverUI GameOverUI;
    
    private bool _isOver;

    private void Update()
    {
        //만약에 게임이 종료가 되었다면
        //R키를 눌렀다면 재시작
        if(_isOver && Input.GetKeyDown(KeyCode.R))
        {

            //씬 전환을 처리해줌
            //씬 이름이나 index를 넣어서 사용한다.
            SceneManager.LoadScene(0);
            //씬의 초기값으로 만들어줌 => 초기에 active false로 설정시 초기값은 false임
        }
    }


    public void End()
    {
        Timer.IsOn = false;

        //데이터 저장
        int savedBestTime = PlayerPrefs.GetInt("BestTime");
        
        int bestTime = Math.Max(Timer.SurvivalTime, savedBestTime);

        PlayerPrefs.SetInt("BestTime", bestTime);

        //GameOverUI에다가 갱신
        GameOverUI.Activate(bestTime); //bestTime 최대시간을 반환해줌

        _isOver = true;
    }



}
