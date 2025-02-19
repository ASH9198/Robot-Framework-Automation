*** Settings ***
Library    Collections


*** Test Cases ***
Example_001
    @{List1}=    Create List    1    2    3    4    5
    @{List2}=    Create List    6    7    8    9    10
    Log    ${List1}
    Log    ${List2}