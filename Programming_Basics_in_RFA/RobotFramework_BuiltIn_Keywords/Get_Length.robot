*** Settings ***
Library    Collections


*** Test Cases ***
Example_001
    @{List1}=    Create List    1    3    2    4    5    2    4    6    2
    ${LengthOgList}=    Get Length    item=@{List1}
    Log    ${LengthOgList}
    Log To Console    ${LengthOgList}