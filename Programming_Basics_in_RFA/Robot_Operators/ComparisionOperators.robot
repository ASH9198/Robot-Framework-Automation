*** Variables ***
${NUM1}    10
${NUM2}    20
${NUM3}    20

*** Test Cases ***
Equal To Operator
    ${Result}=    Evaluate    ${NUM2} == ${NUM3}
    Log    message=${Result}

Not Equal To Operator
    ${Result}=    Evaluate    ${NUM1} != ${NUM3}
    Log    message=${Result}

Greater Than Operator
    ${Result}=    Evaluate    ${NUM1} > ${NUM3}
    Log    message=${Result}

Less Than Operator
    ${Result}=    Evaluate    ${NUM1} < ${NUM3}
    Log    message=${Result}

Greater Than Or Equal To
    ${Result}=    Evaluate    ${NUM2} >= ${NUM3}
    Log    message=${Result}

Less Than Or Equal To
    ${Result}=    Evaluate    ${NUM2} <= ${NUM3}
    Log    message=${Result}