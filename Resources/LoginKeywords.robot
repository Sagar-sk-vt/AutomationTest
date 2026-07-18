*** Settings ***
Library     SeleniumLibrary
Variables    ../PageObjects/LoginPage.py

*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
Enter UserName
    [Arguments]    ${username}
    Input Text    ${txt_loginUserName}    ${username}
Enter Password
    [Arguments]    ${password}
    Input Text    ${txt_loginPassword}    ${password}
Click Signin
    Click Button     ${btn_SignIn}
Verify Sussessfull Login
    Title Should Be    Order Journey View - NYU Langone Health
Closed broswer
    Close All Browsers

