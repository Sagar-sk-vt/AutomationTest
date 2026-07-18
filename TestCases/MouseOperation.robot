*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://swisnl.github.io/jQuery-contextMenu/demo.html
${url2}    https://testautomationpractice.blogspot.com/
${browser}    chrome

*** Test Cases ***
MouseOperationTest
    #Right click option/open context menu
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Open Context Menu    xpath://span[@class='context-menu-one btn btn-neutral']
    Sleep    2
    #Close All Browsers

    #Double click operation

    go to    ${url2}
    Double Click Element    xpath://button[normalize-space()='Copy Text']
    Sleep    2


