*** Settings ***
Library    Collections


*** Test Cases ***
Example_001
    &{Dict1}=    Create Dictionary    key1=Apple    Key2=Mango    Key3=Orange
    Log    ${Dict1}

Example_002
    &{Dict1}=    Create Dictionary    key1=Apple    Key2=Mango    Key3=Orange
    Log    ${Dict1.key1}
    Log    ${Dict1.Key2}
    Log    ${Dict1.Key3}
