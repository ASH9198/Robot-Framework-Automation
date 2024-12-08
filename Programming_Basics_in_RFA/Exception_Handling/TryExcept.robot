*** Variables ***
${PERSON1}    MALE
${PERSON2}    FEMALE


*** Test Cases ***
Try Except Example For Person
    TRY
        Should Be Equal    first=${PERSON1}    second=${PERSON2}
    EXCEPT
        Log    message=Both the string are unequal.
    FINALLY
        Log    message=this is to check whether gender is same between two persons.
    END
