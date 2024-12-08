*** Variables ***
${value1}     10
${value2}     20
${string1}    Hello
${string2}    World

*** Test Cases ***
Example Test
    # Comparison Operators
    ${result}=    Evaluate    ${value1} < ${value2}
    Should Be True    ${result}

    # Logical Operators
    ${result}=    Evaluate    ${value1} < ${value2} and ${value1} > 5
    Should Be True    ${result}

    # Arithmetic Operators
    ${result}=    Evaluate    ${value1} + ${value2}
    ${int_value}    Convert To Number    30
    Should Be Equal    ${result}    ${int_value}

    # String Operators
    ${result}=    Evaluate    '${string1}' + ' ' + '${string2}'
    Should Be Equal    ${result}    Hello World

    # Membership Operators
    ${result}=    Evaluate    'e' in '${string1}'
    Should Be True    ${result}

    # Identity Operators
    ${object1}=    Convert To Number    42
    ${object2}=    Convert To Number    42
    ${result}=    Evaluate    ${object1} is ${object2}
    Should Be True    ${result}
