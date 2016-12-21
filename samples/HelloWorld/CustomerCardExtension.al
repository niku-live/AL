// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

pageextension 70000021 CustomerCardExtension extends "Customer Card"
{

    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addlast("&Customer")
        {   
            action("Show Greeting")
            {
                RunObject = codeunit HelloWorld;
                RunPageOnRec = True;
                Image = CheckDuplicates;
                PromotedCategory = Category8;
                Promoted = true;
            }
            action("Greetings")
            {
                RunObject = page "Greeting Item List";
                Image = List;
                PromotedCategory = Category8;
                Promoted = true;                
            }
        }
    }    
}
