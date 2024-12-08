*** Variables ***
${NUM1}    15
${NUM2}    20


*** Test Cases ***
Greater Than
    IF    ${NUM2} > 5
        Log    Value is greater than 5
    ELSE
        Log    Value is lesser than 5
    END

Lesser Than
    IF    ${NUM1} < 15
        Log    Value is lesser than 20
    ELSE
        Log    Value is greater than 20
    END
