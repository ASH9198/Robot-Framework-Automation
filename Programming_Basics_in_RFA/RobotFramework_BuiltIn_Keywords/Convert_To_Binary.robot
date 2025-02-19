*** Settings ***
Documentation    Convert To Binary Keyword Implementation


*** Test Cases ***
Convert Integer To Binary
    [Documentation]    To Convert an Integer to Binary
    ${num1}=    Set Variable    5
    ${num2}=    Set Variable    10
    ${result1}=    Convert To Binary    item=${num1}    base=10
    ${result2}=    Convert To Binary    item=${num2}    base=10
