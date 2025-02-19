*** Settings ***
Documentation    Convert To Integer Keyword Implementation


*** Test Cases ***
Convert To Integer Example
    [Documentation]    To Convert an Integer to Hexadecimal
    ${num1}=    Set Variable    10
    ${num2}=    Set Variable    -10
    ${Result1}=    Convert To Integer    item=${num1}
    ${Result2}=    Convert To Integer    item=${num2}
    ${SUM}=    Evaluate    ${Result1}+${Result2}
    ${DIFFERENCE}=    Evaluate    ${Result1}-${Result2}
    Log    Sum= ${SUM}, Difference= ${DIFFERENCE}
