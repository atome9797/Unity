using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

//Serializable 사용시 serializing 가능한 데이터 타입이 된다.
[Serializable]
public class GameData
{
    public int BGM_Volume = 0;
    public int Effect_Volume = 0;
    
    public int gold = 0;
    public int hp = 10;
    public float movespeed = 5f;

    public List<MonsterData> monsterKillDatas;

    public GameData(int gold, int hp, float movespeed)
    {
        this.gold = gold;
        this.hp = hp;
        this.movespeed = movespeed;
        monsterKillDatas = new List<MonsterData>();
    }
}

[Serializable]
public class MonsterData
{
    public int index;
    public string name;
    public float moveSpeed;
    public float rotationSpeed;
    public string description;

    public MonsterData(int index, string name, float moveSpeed, float rotationSpeed, string description)
    {
        this.index = index;
        this.name = name;
        this.moveSpeed = moveSpeed;
        this.rotationSpeed = rotationSpeed;
        this.description = description;
    }

}


public class DataManager : MonoBehaviour
{

    static GameObject container;
    static GameObject Container { get => container; }

    static DataManager _instance;

    public static DataManager Instance
    {
        get
        {
            if(_instance == null)
            {
                container = new GameObject();
                container.name = "DataManager";
                _instance = container.AddComponent(typeof(DataManager)) as DataManager;

                _instance.SetMonsterDataFromCSV();

                DontDestroyOnLoad(container);
            }

            return _instance;
        }
    }

    GameData gameDatas;

    //GameData를 반환하는 GameData클래스
    public GameData GameData
    {
        get
        {
            if(gameDatas == null)
            {
                LoadGameData();
                SaveGameData();
            }

            return gameDatas;
        }
    }

    void InitGameData()
    {
        gameDatas = new GameData(100, 300, 5f);
        gameDatas.monsterKillDatas.Add(new MonsterData(1, "전지윤", 2f, 1f, "오늘 안옴"));
        gameDatas.monsterKillDatas.Add(new MonsterData(2, "권희영", 2f, 1f, "오늘 안옴"));
    }

    //Json 저장
    public void SaveGameData()
    {
        InitGameData();
        string toJsonData = JsonUtility.ToJson(gameDatas, true);
        //사용자의 로컬 데이터를 저장해주는 공간을 지정해주는 함수
        string filePath = Application.persistentDataPath + GameDataFileName;
        File.WriteAllText(filePath, toJsonData);
    }

    //Json 읽기
    public void LoadGameData()
    {
        string filePath = Application.persistentDataPath + GameDataFileName;

        if(File.Exists(filePath))
        {
            string fromJsonData = File.ReadAllText(filePath);
            gameDatas = JsonUtility.FromJson<GameData>(fromJsonData);

            if(gameDatas == null)
            {
                InitGameData();
            }
        }
        else
        {
            InitGameData();
        }

    }


    public string GameDataFileName = ".json";


    //직렬화됨(데이터 배열을 바이트 단위로 만들어 주는 작업을 의미)
    [Header("몬스터 관련 DB")]
    [SerializeField] TextAsset monsterDB;
    public Dictionary<int, MonsterData> MonsterDataDict { get; set; }

    //CSV 파일 읽기
    private void SetMonsterDataFromCSV()
    {
        //파일 불러옴
        monsterDB = Resources.Load<TextAsset>("CSV/GameData - Monster");
        
        if(monsterDB == null)
        {
            Debug.LogError("CSV/GameData - Monster 파일이 없습니다.");
            return;
        }

        if(MonsterDataDict == null)
        {
            //함수안에 Dictionary를 생성해줌 (set)
            MonsterDataDict = new Dictionary<int, MonsterData>();
        }


        //파일 데이터 읽어 오기
        string [] lines = monsterDB.text.Substring(0, monsterDB.text.Length).Split('\n');

        for(int i = 1; i < lines.Length; i++)
        {
            string [] row = lines[i].Split(',');

            //함수안에 있는 Dictionary 메소드 호출 (get)
            MonsterDataDict.Add(int.Parse(row[0]), new MonsterData(
                int.Parse(row[0]), //index
                row[1], //name
                float.Parse(row[2]), //moveSpeed
                float.Parse(row[3]), //rotationSpeed
                row[4] //description
            ));
        }
    }

    public MonsterData GetMonsterData(int index)
    {
        if(MonsterDataDict.ContainsKey(index))
        {
            return MonsterDataDict[index];
        }

        Debug.LogWarning(index + "해당 인덱스 데이터가 없음");
        return null;
    }    
}
