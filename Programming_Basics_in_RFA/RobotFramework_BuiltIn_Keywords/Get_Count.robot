*** Settings ***
Library    Collections


*** Test Cases ***
Example_001
    @{List1}=    Create List    1    3    2    4    5    2    4    6    2
    ${NoOfTwosInList}=    Get Count    container=@{List1}    item=2
    Log    ${NoOfTwosInList}