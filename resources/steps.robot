*** Settings ***
Library     AppiumLibrary


*** Variables ***
${TIME_OUT}    10s

*** Keywords ***
ShowBalance
    Click Element    accessibility_id=show-balance
    Wait Until Element Is Visible    accessibility_id=user-balance    timeout=${TIME_OUT}

BalanceExpected
    [Arguments]    ${value}

    Element Text Should Be
    ...    accessibility_id=user-balance
    ...    expected=${value}
    ...    message=Valor do saldo está incorreto
