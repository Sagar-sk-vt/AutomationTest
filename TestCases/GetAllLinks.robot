*** Settings ***
Library    SeleniumLibrary
#Resource    ../Resources/Resources.robot

*** Variables ***
${url}    https://shopmastercardmerchb2c.lapine.dev/QA/
${browser}    chrome

*** Test Cases ***
AllPageLinks
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ${AllLinksCount}=    Get Element Count    xpath://a
    Log To Console    ${AllLinksCount}

    @{links}    Create List    
    FOR    ${i}    IN RANGE    1    @{links}
    ${LinkText}    Get Text    xpath:(//a)[${i}]
    Log To Console    ${LinkText}
    END

    FOR    ${i}    IN RANGE    1    ${AllLinksCount + 1}
    ${Link}=    Get Element Attribute    xpath:(//a)[${i}]    href
    Log To Console    ${i}. ${Link}
    END

