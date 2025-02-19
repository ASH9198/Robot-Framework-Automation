*** Settings ***
Documentation    Convert To Binary Keyword Implementation


*** Test Cases ***
Convert To Boolean Example
    [Documentation]    To Convert an Integer to Boolean
    ${num1}=    Set Variable    5
    ${num2}=    Set Variable    10
    ${greater}=    Evaluate    int(${num2}) > int(${num1})
    ${lesser}=    Evaluate    int(${num1}) < int(${num2})
    ${result2}=    Convert To Boolean    item=${greater}
    ${result3}=    Convert To Boolean    item=${lesser}
