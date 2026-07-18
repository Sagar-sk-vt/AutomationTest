*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Login_Resources.robot
Suite Setup    Open My Browser
Suite Teardown    Closed Browser
Test Template    Invalid Login    
#Test Template    Invalid User name validation
#Test Template    Invalid Password validation


*** Test Cases ***    username    password
Invalid User and Password    agdfkaf@ad.ads    12sdkhshdg
Invalid User and correct Password    sanket.gulhane1@valethi.com    123456
Correct User and invalid Password    sanket.gulhane@valethi.com    1234565

#Blank user name    ${EMPTY}
#Blank Password    ${EMPTY}    ${EMPTY}
#on line 7: Setting 'Test Template' is allowed only once. Only the first value is used.

*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Sleep    1
    Invalid User Name And Password Validation

Invalid User name validation
    [Arguments]    ${username}    
    Input Username    ${username}
    Click Login Button
    Sleep    1
    User Name Validation

Invalid Password validation
    [Arguments]    ${password}
    Input Password    ${password}
    Click Login Button
    Sleep    1
    User Password Validation





