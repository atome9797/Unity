using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//template <typename T> �� ����
public class SingletonBehavior<T> : MonoBehaviour where T : MonoBehaviour //where ���� T�� ���� ���������� ��Ÿ����. => T�� MonoBehaviour ��ӹޱ� ������  ������Ʈ�� ������ �ְ� �ȴ�. 
{

    private static T _instance;

    public static T Instance
    {
        get { 
            if(_instance == null)
            {
                _instance = FindObjectOfType<T>();


                //�ڵ����� ���� �Ŵ����� �����ϰ� ���� => �������� ����
                /*if(_instance == null)
                {
                    GameObject go = new GameObject("@GameManager");
                    _instance = go.AddComponent<T>();
                }*/
                DontDestroyOnLoad(_instance.gameObject);
            }
            return _instance; 
        
        }
    }

    protected void Awake()
    {
        if(_instance != null)
        {
            if(_instance != this)
            {
                Destroy(gameObject); //������ �ٸ� ������Ʈ�� ������ ������
            }
            return;//�ν��Ͻ��� ������ �����������ν� ������. => ������ �������ָ� ������
        }
        //�ν��Ͻ��� ������ ���� �Ҵ� �޴´�.
        _instance = GetComponent<T>();
        //���� ��ȯ�ɶ����� �ı��� ���� �ʵ��� �Ѵ�.
        DontDestroyOnLoad(gameObject);
    }

}
