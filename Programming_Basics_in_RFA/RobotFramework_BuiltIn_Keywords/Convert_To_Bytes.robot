*** Settings ***
Documentation    Convert To Bytes Keyword Implementation


*** Test Cases ***
Convert To Bytes Example
    [Documentation]    To Convert a string to bytes
    ${String1}=    Set Variable    Ashish
    ${Result}=    Convert To Bytes    input=${String1}    input_type=text
    Log    ${Result}
    ${Result1}=    Convert To Bytes    input=82 70    input_type=int
    Log    ${Result1}
