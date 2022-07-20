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
        //�̺�Ʈ�� �����Ѱ�
        // �̺�Ʈ�� �Ͼ���� �ݹ��Լ��� �����Ŵ
        // OnScoreChanged�� �ִ� CurrentScore�� UpdateText�� ���ڷ� �޾� ����Ѵ�.

        //�ҽ� �ߺ��� ���ϱ� ���� �� ������ �̸� ���ְ� �߰�������.
        //GameManager.Instance.OnScoreChanged.RemoveListener(UpdateText);
        //GameManager.Instance.OnScoreChanged.AddListener(UpdateText);

        //c# �̺�Ʈ��
        //��� 2
        GameManager.Instance.OnScoreChanged2 -= UpdateText; //��������
        GameManager.Instance.OnScoreChanged2 += UpdateText; //����
    }

    private void OnDisable()
    {
        //GameManager.Instance.OnScoreChanged.RemoveListener(UpdateText);

        GameManager.Instance.OnScoreChanged2 -= UpdateText; //����
    }

    public void UpdateText(int score)
    {
        //_ui�� �ؽ�Ʈ�� ����
        _ui.text = $" Score : {score}";
    }

    

}
