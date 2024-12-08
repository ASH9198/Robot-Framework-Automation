*** Variables ***
${NUM1}    10
${NUM2}    20
${NUM3}    20

*** Test Cases ***
AND Operator
    ${Result}    Evaluate    expression=${NUM2} > ${NUM1} and ${NUM3} > ${NUM1}
    Log    ${Result}

OR Operator
    ${Result}    Evaluate    expression=${NUM2} > ${NUM1} or ${NUM3} > ${NUM1}
    Log    ${Result}

NOT Operator
    ${Result}    Evaluate    expression=not ${NUM2} > ${NUM1}
    Log    ${Result}
