using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class move : MonoBehaviour
{
    class Person
    {
        public string FirstName { get; set; }
        public string SecondName { get;  set; }
        
        public string FullName
        {
            get
            {
                return $"{FirstName} {SecondName}";
            }
        }
    }

    // Start is called before the first frame update
    void Start()
    {
        Person person = new Person();
        person.FirstName = "kim";
        person.SecondName = "younghoon";

        //person.FullName = "asd"; �� ������ get�� �������� ����

        Debug.Log(person.FullName);
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
