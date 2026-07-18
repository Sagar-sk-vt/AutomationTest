*** Settings ***
Suite Setup    Log To Console    opening browser
Suite Teardown    Log To Console    closing browser

Test Setup    Log To Console    login into application
Test Teardown    Log To Console    logoff from application


*** Test Cases ***
TC1
    [Tags]    ex1
    Log To Console    This is recharge test
TC2
    [Tags]    ex2
    Log To Console    This is postpade test
TC3
    [Tags]    ex3
    Log To Console    This is Search test



