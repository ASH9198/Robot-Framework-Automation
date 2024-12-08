*** Variables ***
${NUM1}    ${EMPTY}
${NUM2}    ${EMPTY}

# To Run the beloe testcase from console as user defined input, please enter below command:
# robot --variable NUM1:37 --variable NUM2:56 Programming_Basics_in_RFA/Conditional_Statements/ElseIfLadder_Condition.robot
*** Test Cases ***
Greater Than Or Lesser Than
    IF    ${NUM1} > ${NUM2}
        Log To Console    ${NUM1} is greater than ${NUM2}
    ELSE IF    ${NUM1} < ${NUM2}
        Log To Console    ${NUM1} is lesser than ${NUM2}
    ELSE
        Log To Console    ${NUM1} is equal to ${NUM2}
    END
