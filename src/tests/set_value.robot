*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When a new value is set, the value becomes the new set value
    Go To  ${HOME_URL}
    Input Text  new_value  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa