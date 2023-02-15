*** Settings ***
Library     AppiumLibrary


*** Keywords ***
ShowBalance
    Click Element    accessibility_id=show-balance
    Wait Until Element Is Visible    accessibility_id=user-balance    timeout=10s

BalanceExpected
    [Arguments]    ${value}

    Element Text Should Be
    ...    accessibility_id=user-balance
    ...    expected=${value}
    ...    message=Valor do saldo está incorreto
