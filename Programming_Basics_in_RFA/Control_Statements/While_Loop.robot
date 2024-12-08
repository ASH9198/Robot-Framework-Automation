*** Variables ***
${ITR1}    2
${ITR2}    3
${ITR3}    5


*** Test Cases ***
While Loop Example For Iteration
    WHILE    ${ITR3} > ${ITR1}
        Log    ITR1 is: ${ITR1}
        ${ITR1}=    Evaluate    expression=${ITR1}+1
    END

While Loop Example Break Statement
    WHILE    ${ITR3} > ${ITR1}
        Log    ITR1 is: ${ITR1}
        IF    ${ITR2} == ${ITR1}
            Log    ${ITR1} is equal to ${ITR2}
            BREAK
        END
        ${ITR1}=    Evaluate    expression=${ITR1}+1
    END

While Loop Example Continue Statement
    WHILE    ${ITR3} > ${ITR1}
        Log    ITR1 is: ${ITR1}
        IF    ${ITR2} != ${ITR1}
            Log    ${ITR1} is not equal to ${ITR2}
            ${ITR1}=    Evaluate    expression=${ITR1}+1
            CONTINUE
        END
        ${ITR1}=    Evaluate    expression=${ITR1}+1
    END
