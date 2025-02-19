*** Settings ***
Documentation    Convert To String Keyword Implementation


*** Test Cases ***
Convert To String Example
    [Documentation]    To Convert a String from Number or Interger
    ${num1}=    Set Variable    10.7685
    ${num2}=    Set Variable    -10.9845
    ${num3}=    Set Variable    20.50843
    ${Result1}=    Convert To Number    item=${num1}    precision=2
    ${Result2}=    Convert To Number    item=${num2}    precision=3
    ${Result3}=    Convert To Number    item=${num3}    precision=3
    ${SUM}=    Convert To Number    item=${Result1+${Result2}+${Result3}}    precision=3
    ${DIFFERENCE}=    Evaluate    ${Result1}-${Result2}-${Result3}
    ${SUM1}=    Convert To String    item=${SUM}
    ${DIFFERENCE1}=    Convert To String    item=${DIFFERENCE}
    Should Not Be Equal As Strings    first=${SUM}    second=${SUM1}
    Should Not Be Equal As Strings    first=${DIFFERENCE}    second=${DIFFERENCE1}
