*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${BASE_URL}     https://lisp.lapine.dev
${TOKEN}        ZTVhMTQ0ZDFlNjE2NTQzZDVjY
${API_KEY}      gww8k0s8cgs8ww84kk40gco4gsswkksg
${USERNAME}     stash_sandbox_2324
${PASSWORD}     HFYnJ2ot8Ve7MRj7fB4B

*** Test Cases ***
GetShippingInfo

    ${headers}=    Create Dictionary    x-api-key=${API_KEY}
    ${auth}=    Create List    ${USERNAME}    ${PASSWORD}
    Create Session    mysession    ${BASE_URL}    headers=${headers}    auth=${auth}
    ${params}=    Create Dictionary    token=${TOKEN}
    ${response}=    GET On Session    mysession    /stash/shipping/methods    params=${params}
    Log To Console    Status: ${response.status_code}
    Log To Console    Response: ${response.text}

    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}

    ##validation
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200
    ${body}=    Convert To String    ${response.content}
    Should Contain   ${body}    ShopHub - NYULH
    ${contentTypeValue}=    Get From Dictionary    ${response.headers}    server
    Should Be Equal    ${contentTypeValue}    Apache

    # Check the git commint for this update onlly









