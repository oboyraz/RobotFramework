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


