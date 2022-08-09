using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

//Serializable ���� serializing ������ ������ Ÿ���� �ȴ�.
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

    //GameData�� ��ȯ�ϴ� GameDataŬ����
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
        gameDatas.monsterKillDatas.Add(new MonsterData(1, "������", 2f, 1f, "���� �ȿ�"));
        gameDatas.monsterKillDatas.Add(new MonsterData(2, "����", 2f, 1f, "���� �ȿ�"));
    }

    //Json ����
    public void SaveGameData()
    {
        InitGameData();
        string toJsonData = JsonUtility.ToJson(gameDatas, true);
        //������� ���� �����͸� �������ִ� ������ �������ִ� �Լ�
        string filePath = Application.persistentDataPath + GameDataFileName;
        File.WriteAllText(filePath, toJsonData);
    }

    //Json �б�
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


    //����ȭ��(������ �迭�� ����Ʈ ������ ����� �ִ� �۾��� �ǹ�)
    [Header("���� ���� DB")]
    [SerializeField] TextAsset monsterDB;
    public Dictionary<int, MonsterData> MonsterDataDict { get; set; }

    //CSV ���� �б�
    private void SetMonsterDataFromCSV()
    {
        //���� �ҷ���
        monsterDB = Resources.Load<TextAsset>("CSV/GameData - Monster");
        
        if(monsterDB == null)
        {
            Debug.LogError("CSV/GameData - Monster ������ �����ϴ�.");
            return;
        }

        if(MonsterDataDict == null)
        {
            //�Լ��ȿ� Dictionary�� �������� (set)
            MonsterDataDict = new Dictionary<int, MonsterData>();
        }


        //���� ������ �о� ����
        string [] lines = monsterDB.text.Substring(0, monsterDB.text.Length).Split('\n');

        for(int i = 1; i < lines.Length; i++)
        {
            string [] row = lines[i].Split(',');

            //�Լ��ȿ� �ִ� Dictionary �޼ҵ� ȣ�� (get)
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

        Debug.LogWarning(index + "�ش� �ε��� �����Ͱ� ����");
        return null;
    }    
}
