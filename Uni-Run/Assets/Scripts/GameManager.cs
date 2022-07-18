using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

// 게임 오버 상태를 표현하고, 게임 점수와 UI를 관리하는 게임 매니저
// 씬에는 단 하나의 게임 매니저만 존재할 수 있다.
public class GameManager : SingletonBehavior<GameManager> {
    
    public int ScoreIncreaseAmount = 1;
    private bool isGameover = false; // 게임 오버 상태
    public ScoreText scoreText; // 점수를 출력할 UI 텍스트
    public GameObject gameOverUI; // 게임 오버시 활성화 할 UI 게임 오브젝트

    private int _score = 0; // 게임 점수

    private void Awake()
    {
        Debug.Log("GameManager do something");
    }

    void Update() {
        // 게임 오버 상태에서 게임을 재시작할 수 있게 하는 처리

        if(isGameover && Input.GetKeyDown(KeyCode.R))
        {
            SceneManager.LoadScene(0);
        }
    }

    // 점수를 증가시키는 메서드
    public void AddScore() 
    {
        _score += ScoreIncreaseAmount;
        scoreText.UpdateText(_score);
    }

    // 플레이어 캐릭터가 사망시 게임 오버를 실행하는 메서드
    public void OnPlayerDead() {
        
    }

    //플레이어 캐릭터가 사망시 게임 오버를 실행하는 메소드
    public void End()
    {
        gameOverUI.SetActive(true);
        isGameover = true;
    }

}