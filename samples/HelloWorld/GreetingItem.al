table 70000000 "Greeting Item"
{
    fields
    {
        field(1;"Greeting No";Integer)
        {
            AutoIncrement = true;
        }
        field(2;"Greeting Language";Text[30])
        {            
        }
        field(3;"Greeting Text";Text[150])
        {            
        }
    }

    keys
    {
        key(1;PK;"Greeting No")
        {
            Clustered = true;
        }
    }
}