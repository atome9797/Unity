using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameOverUI : MonoBehaviour
{

    private GameObject[] _childs;
    private int _childCount;

    //�� ����
    public void Activate() { 
    
        for(int i = 0; i < _childCount; ++i)
        {
            _childs[i].SetActive(true);
        }
    }


    private void Awake()
    {
        _childCount = transform.childCount;
        _childs = new GameObject[_childCount];



        for(int i = 0; i < _childCount; ++i)
        {
            _childs[i]= transform.GetChild(i).gameObject;
        }
    }

    private void OnEnable()
    {
        GameManager.Instance.OnGameEnd.AddListener(Activate); //������Ŵ
    }

    private void OnDisable()
    {
        GameManager.Instance.OnGameEnd.RemoveListener(Activate);
    }
}
