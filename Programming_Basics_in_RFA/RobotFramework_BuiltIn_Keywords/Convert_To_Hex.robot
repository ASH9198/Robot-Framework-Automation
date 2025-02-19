*** Settings ***
Documentation    Convert To Hexadecimal Keyword Implementation


*** Test Cases ***
Convert To Hex Example
    [Documentation]    To Convert an Integer to Hexadecimal
    ${num1}=    Set Variable    10
    ${num2}=    Set Variable    -10
    ${Result1}=    Convert To Hex    item=${num1}    base=10    prefix=0x    lowercase=no
    ${Result2}=    Convert To Hex    item=${num2}    base=10    prefix=0x    lowercase=no
    Log    ${Result1} and ${Result2}
