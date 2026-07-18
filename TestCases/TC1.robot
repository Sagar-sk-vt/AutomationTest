*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://shopnyuint.lapine.dev/QA/dmtpv1a/

*** Test Cases ***
LoginTest
    open browser    ${url}    ${browser}
    loginToApplication
    Sleep    2
    close browser

*** Keywords ***
loginToApplication
    input text    id:input-username    sanket.gulhane@valethi.com
    input text    id:input-password    123456
    click element    id:btnSubmit