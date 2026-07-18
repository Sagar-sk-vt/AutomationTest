*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome

*** Test Cases ***
Alert Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    2
    Click Element    id:confirmBtn
    Sleep    2
    #Handle Alert    accept
    #Handle Alert    dismiss
    #Handle Alert    leave
    #Alert Should Be Present    Press a button!
    Alert Should Not Be Present    Press a button!
    Close Browser


