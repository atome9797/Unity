using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class ScoreText : MonoBehaviour
{
    public TMPro.TextMeshProUGUI _ui;

    private void Awake()
    {
        _ui = GetComponent<TextMeshProUGUI>();
    }

    private void OnEnable()
    {
        //이벤트를 구독한것
        // 이벤트가 일어났을때 콜백함수를 실행시킴
        // OnScoreChanged에 있던 CurrentScore를 UpdateText가 인자로 받아 사용한다.

        //소스 중복을 피하기 위해 꼭 삭제를 미리 해주고 추가해주자.
        //GameManager.Instance.OnScoreChanged.RemoveListener(UpdateText);
        //GameManager.Instance.OnScoreChanged.AddListener(UpdateText);

        //c# 이벤트임
        //방법 2
        GameManager.Instance.OnScoreChanged2 -= UpdateText; //구독해제
        GameManager.Instance.OnScoreChanged2 += UpdateText; //구독
    }

    private void OnDisable()
    {
        //GameManager.Instance.OnScoreChanged.RemoveListener(UpdateText);

        GameManager.Instance.OnScoreChanged2 -= UpdateText; //구독
    }

    public void UpdateText(int score)
    {
        //_ui의 텍스트를 수정
        _ui.text = $" Score : {score}";
    }

    

}
