*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://shopmastercardmerchb2c.lapine.dev/QA/
${browser}    chrome
${url2}    https://shopmastercardmerchb2c.lapine.dev/QA/index.php?route=issue_tracker/issue_tracker&page=common/home

*** Test Cases ***
Alert Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    #Sleep    2
    Open Browser    ${url2}    ${browser}
    Maximize Browser Window
    Switch Browser    1
    ${title}=     Get Title
    Log To Console    ${title}
    Switch Browser    2
    ${title1}=     Get Title
    Log To Console    ${title1}
    Close All Browsers

Navigation Test
    Open Browser    ${url}    ${browser}
    ${Loc}=    Get Location
    Log To Console    ${Loc}

    Go To    ${url2}
    ${Loc}=    Get Location
    Log To Console    ${Loc}

    Go Back
    ${Loc}=    Get Location
    Log To Console    ${Loc}
