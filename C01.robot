*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***


*** Test Cases ***
This is my first test scenerio
    Log To Console    --Robot Framework--
    ${name}    Set Variable    Omer
    Log To Console    myName: ${name}

    ${val1}    Set Variable    10
    ${val2}    Set Variable    5
    
    ${result}    Evaluate    ${val1}+${val2}

    Log To Console    Result: ${result}
    IF  ${val1}>${val2}
        Log To Console    ${val1} buyuktur ${val2}
    
    ELSE IF  ${val2}>${val1}
        Log To Console    ${val2} buyuktur ${val1}
    
    ELSE
        Log To Console    ${val2} eşittir ${val1}
        
    END
    