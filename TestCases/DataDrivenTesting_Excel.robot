*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Login_Resources.robot
Library    DataDriver    ../TestData/login.csv
Suite Setup    Open My Browser
Suite Teardown    Closed Browser
Test Template    Invalid Login

*** Test Cases ***    
InvalidLoginTest ${username} and ${password}

*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Sleep    1
    Invalid User Name And Password Validation








