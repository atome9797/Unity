using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class GameOverUI : MonoBehaviour
{
    public TextMeshProUGUI _bestTimeUI;


    public void Activate(int bestTime)
    {
        gameObject.SetActive(true);
        _bestTimeUI.text = $"최고기록시간 : {bestTime}초";
        //_bestTimeUI.text.Replace("~", bestTime.ToString());
    }
}

