using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIManager : MonoBehaviour
{
    public GameObject[] characters;

    private int SelectedID { get; set; }

    // Start is called before the first frame update
    void Start()
    {
        //characters[0] = Resources.Load<GameObject>("");
    }

    public void ChangeCharacter(int index)
    {
        if(index >= characters.Length)
        {
            return;
        }

        foreach(GameObject character in characters)
        {
            character.SetActive(false);

        }
        SelectedID = index;
        characters[SelectedID].SetActive(true);
    }

    public void SceneChage()
    {
        characters[SelectedID].GetComponent<AutoRotate>().IsSelected = true;
    }
}
