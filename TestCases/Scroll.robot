*** Settings ***
Library    SeleniumLibrary
#Resource    ../Resources/Resources.robot

*** Variables ***
${url}    https://shopmastercardmerchb2c.lapine.dev/QA/index.php?route=issue_tracker/issue_tracker&page=common/home
${browser}    chrome

*** Test Cases ***
Scrolling Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Execute Javascript    window.scrollTo(0,889)
    Scroll Element Into View    xpath://div[@class='footerCopyArea']//div[@class='themeContainer']//li[4]
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)
    Scroll Element Into View    id:btnSubmit
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)
   


