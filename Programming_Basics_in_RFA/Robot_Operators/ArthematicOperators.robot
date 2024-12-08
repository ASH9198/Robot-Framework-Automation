*** Variables ***
${NUM1}    10
${NUM2}    20
${NUM3}    30

*** Test Cases ***
Addition
    # ${NUM1}=    Convert To Integer    item=${NUM1}
    # ${NUM2}=    Convert To Integer    item=${NUM2}
    # ${SUM}    Set Variable    ${NUM1 + ${NUM2 + ${NUM3}}}
    ${NUMBER1}=    Set Variable    10
    ${NUMBER2}=    Set Variable    20
    ${SUM}=    Evaluate    expression=${NUMBER1}+${NUMBER2}
    Log    message=${SUM}

Subtraction
    ${NUM1}=    Convert To Integer    item=${NUM1}
    ${NUM2}=    Convert To Integer    item=${NUM2}
    ${DIFF}    Set Variable    ${NUM2 - ${NUM1}}
    Log    ${DIFF}

Multiplication
    ${NUM1}=    Convert To Integer    item=${NUM1}
    ${NUM2}=    Convert To Integer    item=${NUM2}
    ${MUL}    Set Variable    ${NUM2 * ${NUM1}}
    Log    ${MUL}

Division
    ${NUM1}=    Convert To Integer    item=${NUM1}
    ${NUM2}=    Convert To Integer    item=${NUM2}
    ${DIV}    Set Variable    ${NUM2 / ${NUM1}}
    Log    ${DIV}

Modulus
    ${NUM1}=    Convert To Integer    item=${NUM1}
    ${NUM2}=    Convert To Integer    item=${NUM2}
    ${MOD}    Set Variable    ${NUM2 % ${NUM1}}
    Log    ${MOD}
