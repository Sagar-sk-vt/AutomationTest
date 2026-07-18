*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://shopmastercardmerchb2c.lapine.dev/QA/
${browser}    chrome

*** Test Cases ***
PageScreenshotTest
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Capture Element Screenshot    xpath://*[@id="logo"]/a/img    C:/Users/SagarKhobragade/PycharmProjects/Automation/logo.png
    Capture Page Screenshot    C:/Users/SagarKhobragade/PycharmProjects/Automation/PageScreenshotTest.png

    Close All Browsers


