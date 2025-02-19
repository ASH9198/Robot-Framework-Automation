*** Settings ***
Documentation    Catenate Keyword Implementation


*** Test Cases ***
Catenate Two Strings With Hyphen
    [Documentation]    To catenate Two Strings with - Symbol
    ${Str1}=    Set Variable    Ageeru
    ${Str2}=    Set Variable    Ashish
    ${result}    Catenate    SEPARATOR=-    ${Str1}    ${Str2}
    Log    ${result}

Catenate Two Numbers With Star
    [Documentation]    To Catenate two numbers with star symbol
     ${result}    Catenate    SEPARATOR=*    10    20
    Log    ${result}

Catenate Two Lists
    [Documentation]    To Catenate two lists
    @{List1}    Create List    10    20    30
    @{List2}    Create List    40    50    60
    ${result}    Catenate    @{List1}    @{List2}
    Log    ${result}

Default Catenate Strings
    [Documentation]    By Default when two strings concatenate it will produce output with spaces.
    ${Str1}=    Set Variable    Ageeru
    ${Str2}=    Set Variable    Ashish
    ${result}    Catenate    ${Str1}    ${Str2}
    Log    ${result}
