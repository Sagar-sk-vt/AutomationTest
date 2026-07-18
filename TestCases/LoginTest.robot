*** Settings ***
Library        SeleniumLibrary
Resource        ../Resources/LoginKeywords.robot
#Variables        ../PageObjects/LoginPage.py

*** Variables ***
${browser}    headlesschrome
${siteurl}    https://shopnyuint.lapine.dev/QA/dmtpv1a/
${userid}    sanket.gulhane@valethi.com
${pass}    123456

*** Test Cases ***
LoginTest
    Open my Browser    ${siteurl}    ${browser}
    Enter UserName    ${userid}
    Enter Password    ${pass}
    Click Signin
    Sleep     3
    Verify Sussessfull Login
    Closed broswer




