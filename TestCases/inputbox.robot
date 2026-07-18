*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://shopnyuint.lapine.dev/QA/dmtpv1a/
${email_txt}    id:input-username

*** Test Cases ***
InputBoxTest
    open browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    Administration - NYU Langone Health
    Log To Console    ${email_txt}
    Element Should Be Visible    ${email_txt}
    Element Should Be Enabled    ${email_txt}

    Input Text    ${email_txt}    sagar
    Sleep    5
    Clear Element Text    ${email_txt}
    Sleep    3
    Close Browser

*** Keywords ***
