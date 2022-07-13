using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class TimerText : MonoBehaviour
{
    public int SurvivalTime { get; private set; }
    public bool IsOn { get; set; }

    private TextMeshProUGUI _ui; //UI를 불러오는 에셋(클래스)
    private float _elapsedTime = 0f;



    void Start()
    {
        _ui = GetComponent<TextMeshProUGUI>(); //UI 텍스트 속성 불러오고 텍스트에 적용시킴
        _ui.text = $"시간 : {SurvivalTime}초";
        IsOn = true;
    }

    // Update is called once per frame
    void Update()
    {
        if(IsOn)
        {
            //1초에 1번씩만 업데이트 되로독 설정
            _elapsedTime += Time.deltaTime;
            if (_elapsedTime >= 1.0f)
            {
                SurvivalTime += 1;
                _elapsedTime = 0f;
                _ui.text = $"시간 : {SurvivalTime} 초"; //시간을 정수형 타입으로 표현해줌
            }
        }
    }
}
