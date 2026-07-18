*** Settings ***
Library    SeleniumLibrary
#Resource    ../Resources/Resources.robot

*** Variables ***
${url}    https://shopmastercardmerchb2c.lapine.dev/QA/index.php?route=issue_tracker/issue_tracker&page=common/home
${browser}    chrome

*** Test Cases ***
Loop Test 1
    #Open Browser    ${url}    ${browser}
    #Maximize Browser Window
    FOR    ${i}    IN RANGE    1    10
    Log To Console    ${i}
    END

Loop Test 2
    FOR    ${i}    IN    1 2 3 4 5 6
    Log To Console    ${i}
    END

Loop Test 3
    @{items}    Create List    1 2 3 4 5 6
    FOR    ${i}    IN    @{items}
    Log To Console    ${i}
    END

Loop Test 4
    FOR    ${i}    IN    Ankita Harvinder Shubhangi Sagar
    Log To Console    ${i}
    END

Loop Test 5
    @{NameList}    Create List    Ankita    Harvinder    Shubhangi    Sagar
    FOR    ${i}    IN    @{NameList}
    Log To Console    ${i}
    END

Loop Test 6 with Exit
    @{items}    Create List    1    2    3    4    5    6
    FOR    ${i}    IN    @{items}
    Log To Console    ${i}
    Exit For Loop If    ${i}==3
    END
