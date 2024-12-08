*** Variables ***
${num1}    10    # Binary: 1010
${num2}    20    # Binary: 10100
${shift_amount}    2

*** Test Cases ***
Bitwise Operations
    # Bitwise AND
    ${result_and}    Evaluate    ${num1} & ${num2}
    Log    ${result_and}    # Logs the result of bitwise AND

    # Bitwise OR
    ${result_or}    Evaluate    ${num1} | ${num2}
    Log    ${result_or}    # Logs the result of bitwise OR

    # Bitwise XOR
    ${result_xor}    Evaluate    ${num1} ^ ${num2}
    Log    ${result_xor}    # Logs the result of bitwise XOR

    # Bitwise NOT
    ${result_not}    Evaluate    ~${num1}
    Log    ${result_not}    # Logs the result of bitwise NOT

    # Bitwise Left Shift
    ${result_lshift}    Evaluate    ${num1} << ${shift_amount}
    Log    ${result_lshift}    # Logs the result of bitwise left shift

    # Bitwise Right Shift
    ${result_rshift}    Evaluate    ${num1} >> ${shift_amount}
    Log    ${result_rshift}    # Logs the result of bitwise right shift
