page 70000000 "Greeting Item List"
{
    PageType = Worksheet;
    SourceTable = "Greeting Item";

    layout
    {
        area(content)
        {            
            repeater(List)
            {
                field(No;"Greeting No")
                {
                    Editable = false;
                }
                field(GreetingLanguage;"Greeting Language")
                {                    
                }
                field(GreetingText;"Greeting Text")
                {                    
                }
            }            
        }
    }

    actions
    {
        area(processing)
        {
            action("Test Greetings")
            {
                Image = CheckDuplicates;
                PromotedCategory = Process;
                Promoted = true;
                trigger OnAction();
                var
                    HelloText : Codeunit GreetingsManagement;
                begin
                    Message('%1, Demo Customer', HelloText.GetRandomGreeting());
                end;
            }
        }
    }
}