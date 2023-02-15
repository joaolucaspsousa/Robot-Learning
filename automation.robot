*** Settings ***
Library             AppiumLibrary
Resource            resources/base.robot

Test Setup          Open App
Test Teardown       Close App


*** Test Cases ***
ViewBalance
    ShowBalance
    BalanceExpected    R$ 5.500,00
