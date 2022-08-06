using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class StageManager : MonoBehaviour
{
    public SceneChange sc;

    public void OnClickBox()
    {
        string nowbutton = EventSystem.current.currentSelectedGameObject.name;
        if (nowbutton == "s1")
        {
            sc.stageNum = 1;
        }
        else if(nowbutton == "s2")
        {
            sc.stageNum = 2;
        }
        else if (nowbutton == "s3")
        {
            sc.stageNum = 3;
        }

        if(sc.stageNum != 0)
        {
            sc.call();
        }
    }
}
