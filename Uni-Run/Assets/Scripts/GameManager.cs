using UnityEngine;
using UnityEngine.Events;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

// 게임 오버 상태를 표현하고, 게임 점수와 UI를 관리하는 게임 매니저
// 씬에는 단 하나의 게임 매니저만 존재할 수 있다.
public class GameManager : SingletonBehavior<GameManager> {
    
    public int ScoreIncreaseAmount = 1;

    
    //옵저버 임
    public UnityEvent OnGameEnd = new UnityEvent();
    //방법 2
    public event UnityAction OnGameEnd2; //c#의 경우 객체를 만들지 않아도 됨


    public UnityEvent<int> OnScoreChanged = new UnityEvent<int>();
    //방법 2
    public event UnityAction<int> OnScoreChanged2;
    

    public int CurrentScore
    {
        get 
        { 
            return _currentScore; 
        }
        set
        {
            _currentScore = value; //인자값을 받는것을 나타냄
            OnScoreChanged.Invoke(_currentScore); //변화를 감지하고 객체에 보낸다.

            //방법2
            //C#의 경우 구독자가 있는지 확인한다. (null체크를 해야 한다.)
            OnScoreChanged2?.Invoke(_currentScore); //변화를 감지하고 객체에 보낸다.
        }
    }


    private int _currentScore = 0; // 게임 점수
    private bool isEnd = false; // 게임 오버 상태



    void Update() {
        // 게임 오버 상태에서 게임을 재시작할 수 있게 하는 처리

        if(isEnd && Input.GetKeyDown(KeyCode.R))
        {
            reset();
            SceneManager.LoadScene(0);
        }
    }

    // 점수를 증가시키는 메서드
    public void AddScore() 
    {
        CurrentScore += ScoreIncreaseAmount;
    }

    //플레이어 캐릭터가 사망시 게임 오버를 실행하는 메소드
    public void End()
    {
        isEnd = true;
        OnGameEnd.Invoke();

        //방법2
        OnGameEnd2?.Invoke();

        
    }


    private void reset()
    {
        _currentScore = 0;
        isEnd = false;
    }
}