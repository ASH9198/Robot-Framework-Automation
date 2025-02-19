*** Settings ***
Documentation    Convert To Number Keyword Implementation


*** Test Cases ***
Convert To Number Example
    [Documentation]    To Convert a String to Number
    ${num1}=    Set Variable    10.7685
    ${num2}=    Set Variable    -10.9845
    ${num3}=    Set Variable    0
    ${Result1}=    Convert To Number    item=${num1}    precision=2
    ${Result2}=    Convert To Number    item=${num2}    precision=3
    ${Result3}=    Convert To Number    item=${num3}    precision=3
    ${SUM}=    Convert To Number    item=${Result1+${Result2}+${Result3}}    precision=3
    ${DIFFERENCE}=    Evaluate    ${Result1}-${Result2}-${Result3}
    Log    Sum= ${SUM}, Difference= ${DIFFERENCE}
