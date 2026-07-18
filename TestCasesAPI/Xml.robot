*** Settings ***
Library    XML
Library    os
Library    Collections
Library    RequestsLibrary

*** Variables ***
${base_URL}    http://thomas-bayer.com

*** Test Cases ***
Testcase1
    create session    mysession    ${base_URL}
    ${response}=    GET On Session    mysession    /sqlrest/CUSTOMER/15
    #${response}=      get request    mysession    /sqlrest/CUSTOMER/15
    ${xml_string}=    convert to string    ${response.content}
    ${xml_obj}=       parse xml    ${xml_string}

    # Check Single Element value
    element text should be    ${xml_obj}    15    .//ID


