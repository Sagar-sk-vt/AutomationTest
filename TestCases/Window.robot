*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://shopmastercardmerchb2c.lapine.dev/QA/
${browser}    chrome

*** Test Cases ***
Alert Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Link    UAT Feedback Tracker
    Switch Window    title=UAT Issue Tracker - MastercardB2C
    Input Text    id:inputIssueTitle    sagarKKr
    Sleep    2
    Close All Browsers


