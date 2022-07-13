using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class TimerText : MonoBehaviour
{
    public int SurvivalTime { get; private set; }
    public bool IsOn { get; set; }

    private TextMeshProUGUI _ui; //UI�� �ҷ����� ����(Ŭ����)
    private float _elapsedTime = 0f;



    void Start()
    {
        _ui = GetComponent<TextMeshProUGUI>(); //UI �ؽ�Ʈ �Ӽ� �ҷ����� �ؽ�Ʈ�� �����Ŵ
        _ui.text = $"�ð� : {SurvivalTime}��";
        IsOn = true;
    }

    // Update is called once per frame
    void Update()
    {
        if(IsOn)
        {
            //1�ʿ� 1������ ������Ʈ �Ƿε� ����
            _elapsedTime += Time.deltaTime;
            if (_elapsedTime >= 1.0f)
            {
                SurvivalTime += 1;
                _elapsedTime = 0f;
                _ui.text = $"�ð� : {SurvivalTime} ��"; //�ð��� ������ Ÿ������ ǥ������
            }
        }
    }
}
