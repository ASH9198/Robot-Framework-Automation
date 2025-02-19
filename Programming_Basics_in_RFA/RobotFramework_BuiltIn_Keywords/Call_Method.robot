*** Settings ***
Documentation    Call Method Keyword Implementation
Library    ../RobotFramework_BuiltIn_Keywords/UserDefinedMethods/Example.py


*** Test Cases ***
Basic Method Call
    ${obj}=    Evaluate    Example.ExampleClass("Robot")
    ${result}=    Call Method    ${obj}    greet
    Should Be Equal    ${result}    Hello, Robot!

Passing Positional Arguments
    ${obj}=    Evaluate    Example.ExampleClass("Tester")
    ${num1}=    Evaluate    int(5)
    ${num2}=    Evaluate    int(10)
    ${result}=    Call Method    ${obj}    multiply    ${num1}    ${num2}
    ${result}=    Evaluate    str(${result})
    Should Be Equal    ${result}    50

Passing Named Arguments
    ${obj}=    Evaluate    Example.ExampleClass("User")
    ${result}=    Call Method    ${obj}    greet    greeting=Hi
    Should Be Equal    ${result}    Hi, User!

Using Both Positional and Named Arguments
    ${obj}=    Evaluate    Example.ExampleClass("Dev")
    ${result}=    Call Method    ${obj}    summarize    1    2    3    separator= -
    Should Be Equal    ${result}    1 -2 -3

Calling a Method Without Arguments
    ${obj}=    Evaluate    Example.ExampleClass("QA")
    Call Method    ${obj}    add_data    42
    ${data}=    Call Method    ${obj}    get_data
    ${Expected_data}=    Create List    42
    Should Be Equal    ${data}    ${Expected_data}

Multiple Method Calls on Same Object
    ${obj}=    Evaluate    Example.ExampleClass("Analyst")
    Call Method    ${obj}    add_data    100
    Call Method    ${obj}    add_data    200
    ${data}=    Call Method    ${obj}    get_data
    @{Expected_List}=    Create List    100    200
    Should Be Equal    ${data}    ${Expected_List}

Using Variables as Arguments
    ${value}=    Set Variable    500
    ${separator}=    Set Variable     | 
    ${obj}=    Evaluate    Example.ExampleClass("Engineer")
    ${result}=    Call Method    ${obj}    summarize    10    20    30    ${value}    separator=${SPACE}${separator}${SPACE}
    Should Be Equal    ${result}    10 | 20 | 30 | 500
