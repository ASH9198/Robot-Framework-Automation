*** Settings ***
Documentation    Convert To Octal Keyword Implementation


*** Test Cases ***
Convert To Octal Example
    [Documentation]    To Convert an Integer to Octal
    ${num1}=    Set Variable    10
    ${num2}=    Set Variable    -10
    ${Result1}=    Convert To Octal    item=${num1}    base=10    prefix=0o
    ${Result2}=    Convert To Octal    item=${num2}    base=10    prefix=0o
    Log    ${Result1} and ${Result2}
