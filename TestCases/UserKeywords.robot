*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources.robot

*** Variables ***
${url}    https://shopmastercardmerchb2c.lapine.dev/QA/
${browser}    chrome

*** Test Cases ***
Alert Test
    ${pageTitle}=    launchBrowser    ${url}    ${browser}
    Log To Console    ${pageTitle}
    log    ${pageTitle}
    Close All Browsers


