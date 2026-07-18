*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demowebshop.tricentis.com/register
${browser}    chrome
#${speed}=    get selenium speed

*** Test Cases ***
Registration Test
    ${speed}    Get Selenium Speed
    Log To Console    ${speed}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    1 seconds
    Select Radio Button    Gender    M
    Input Text    id:FirstName    sagar
    Input Text    id:LastName    KKR
    Input Text    name:Email    sagarkk@amd.cc
    Input Text    id:Password    sk1234
    Input Text    name:ConfirmPassword    sk1234
    ${speed}    Get Selenium Speed
    Log To Console    ${speed}
    Close Browser


