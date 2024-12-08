*** Variables ***
${NUM1}    15
${NUM2}    20


*** Test Cases ***
Greater Than
    IF    ${NUM1} > 5
        Log    Value is greater than 5
    END

Lesser Than
    IF    ${NUM2} < 20
        Log    Value is lesser than 20
    END
