*** Settings ***
Library    Collections

*** Test Cases ***
Collections
    ${names}    Create List    
    Append To List    ${names}    Omer    Poyraz    Hakan    Mehmet    Fatih

    Log To Console    ${names}

    ${e}    Get From List    ${names}    0

    Log To Console    ${e}

    Remove From List    ${names}    2
    Log To Console    ${names}

    Remove Values From List    ${names}    Mehmet
    Log To Console    ${names}


    List Should Contain Value    ${names}    Omer


    Set List Value    ${names}    0    Faruk
    Log To Console    ${names}


    Log To Console    ${names}[0]

    FOR  ${name}  IN  @{names}
        Log To Console    element: ${name}
        Exit For Loop If    '${name}' == 'Poyraz'
    END



    FOR  ${name}  IN  @{names}
        IF  '${name}' == 'Poyraz'
            Log To Console    name found: ${name}      

        ELSE
            Log To Console    not matched!
        END
        
    END



    ${numbers}    Create List    1    2    3    4    5    6

    FOR  ${number}  IN  @{numbers}
        IF  ${number}>=3
            Log To Console    ${number} is equal 3 or greater
        ELSE
            Log To Console    ${number} is less than 3
        END
        
    END


    FOR  ${number}  IN RANGE    100
        IF  ${number}%2==0
            Log To Console    \n${number}
 
        END
    END
    


     
    
    


