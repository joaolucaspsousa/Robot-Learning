*** Settings ***
Library             AppiumLibrary
Resource            resources/settings.resource
Resource            steps/balance_steps.robot

Test Setup          Open App
Test Teardown       Close App

*** Test Cases ***
TC01: ViewBalance
    ShowBalance
    BalanceExpected    ${DICIONARY.value_expected}
