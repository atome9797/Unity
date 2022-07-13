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
        //���࿡ ������ ���ᰡ �Ǿ��ٸ�
        //RŰ�� �����ٸ� �����
        if(_isOver && Input.GetKeyDown(KeyCode.R))
        {

            //�� ��ȯ�� ó������
            //�� �̸��̳� index�� �־ ����Ѵ�.
            SceneManager.LoadScene(0);
            //���� �ʱⰪ���� ������� => �ʱ⿡ active false�� ������ �ʱⰪ�� false��
        }
    }


    public void End()
    {
        Timer.IsOn = false;

        //������ ����
        int savedBestTime = PlayerPrefs.GetInt("BestTime");
        
        int bestTime = Math.Max(Timer.SurvivalTime, savedBestTime);

        PlayerPrefs.SetInt("BestTime", bestTime);

        //GameOverUI���ٰ� ����
        GameOverUI.Activate(bestTime); //bestTime �ִ�ð��� ��ȯ����

        _isOver = true;
    }



}
