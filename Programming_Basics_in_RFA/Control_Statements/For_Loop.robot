*** Test Cases ***
Simple FOR Loop Example
    @{values}=    Create List    Apple    Banana    Cherry
    FOR    ${item}    IN    @{values}
        Log    The item is: ${item}
    END

FOR Loop with Range
    FOR    ${i}    IN RANGE    1    5
        Log    The number is: ${i}
    END

Nested FOR Loop Example
    @{fruits}=    Create List    Apple    Banana
    @{colors}=    Create List    Red    Yellow
    FOR    ${fruit}    IN    @{fruits}
        FOR    ${color}    IN    @{colors}
            Log    ${fruit} is ${color}
        END
    END

Iterate Over Dictionary
    &{fruit_colors}=    Create Dictionary    Apple=Red    Banana=Yellow
    FOR    ${key}    ${value}    IN    &{fruit_colors}
        Log    ${key} is ${value}
    END

FOR Loop with Conditional Logic
    @{numbers}=    Create List    1    5    10    15
    FOR    ${num}    IN    @{numbers}
        IF    ${num} > 10
            Log    ${num} is greater than 10
        ELSE
            Log    ${num} is 10 or less
        END
    END

FOR Loop with Step
    FOR    ${i}    IN RANGE    0    10    2
        Log    The number is: ${i}
    END

Parallel FOR Loop Example
    @{fruits}=    Create List    Apple    Banana
    @{colors}=    Create List    Red    Yellow
    FOR    ${fruit}    ${color}    IN ZIP    ${fruits}    ${colors}
        Log    ${fruit} is ${color}
    END

Break Out of FOR Loop Example
    @{numbers}=    Create List    1    2    3    4    5
    FOR    ${num}    IN    @{numbers}
        IF    ${num} == 3    
            Log    Breaking at ${num}
            BREAK
        END
    END
