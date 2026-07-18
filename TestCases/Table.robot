*** Settings ***
Library    SeleniumLibrary
#Resource    ../Resources/Resources.robot

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome

*** Test Cases ***
AllPageLinks
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ${rows}=    Get Element Count    xpath://*[@name="BookTable"]/tbody/tr
    ${colm}=    Get Element Count    xpath://*[@name="BookTable"]/tbody/tr[1]/th

    Log To Console    ${rows}
    Log To Console    ${colm}

    ${data}=    Get Text    xpath://*[@name="BookTable"]/tbody/tr[5]/td[1]
    Log To Console    ${data}

    Table Column Should Contain    xpath://*[@name="BookTable"]    3    Subject
    Table Row Should Contain    xpath://*[@name="BookTable"]    3    Learn Java
    Table Cell Should Contain    xpath://*[@name="BookTable"]    4    3    Javascript
    Table Header Should Contain    xpath://*[@name="BookTable"]    Price
    

