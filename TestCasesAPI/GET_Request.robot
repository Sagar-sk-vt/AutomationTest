*** Settings ***
Library    RequestsLibrary

*** Variables ***
${base_url}    https://lisp.lapine.dev/stash/shipping/methods?
${token}        token=ZTVhMTQ0ZDFlNjE2NTQzZDVjY

*** Test Cases ***
GetShippingInfo
    Create Session    mysession    ${base_url}
    #${response}=    Get Request    mysession      ${token}
    ${response}=    GET On Session    mysession      ${token}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}


