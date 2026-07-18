*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://shopmastercardmerchb2c.lapine.dev/QA/index.php?route=issue_tracker/issue_tracker&page=common/home
${browser}    chrome

*** Test Cases ***
Dropdown operation
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element    class:multiselect-selected-text
    Sleep    5
    #Select From List By Value    Priority    Fix - Priority 1
    #Sleep    5
    #Select From List By Index    Priority    4
    #Sleep    5
    #Select From List By Label    Priority    Nice to Have - Priority 2
    #Sleep    5

    Select Radio Button    Priority    Fix - Priority 1
    Sleep    5

*** Keywords ***
