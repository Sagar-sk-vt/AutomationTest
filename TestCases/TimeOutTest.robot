*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demowebshop.tricentis.com/register
${browser}    chrome

*** Test Cases ***
Registration TimeOut Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Timeout    10 seconds
    Wait Until Page Contains    Categories
    Select Radio Button    Gender    M
    Input Text    id:FirstName    sagar
    Input Text    id:LastName    KKR
    Input Text    name:Email    sagarkk@amd.cc
    Input Text    id:Password    sk1234
    Input Text    name:ConfirmPassword    sk1234
    Close Browser

Implicit Wait
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10 seconds
    Select Radio Button    Gender    M
    Input Text    id:FirstName1    sagar
    Input Text    id:LastName    KKR
    Input Text    name:Email    sagarkk@amd.cc
    Input Text    id:Password    sk1234
    Input Text    name:ConfirmPassword    sk1234
    Close Browser
