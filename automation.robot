*** Settings ***
Library             AppiumLibrary
Resource            resources/settings.resource
Resource            steps/balance_steps.robot

#Existe o Test Setup e o Test Teardown, que são executados antes e depois de cada caso de teste
Test Setup          Open App
Test Teardown       Close App

# Existe também o Suite Setup e o Suite Teardown, que são executados antes e depois de todos os casos de teste

*** Test Cases ***
TC01: ViewBalance
    ShowBalance
    BalanceExpected    ${DICIONARY.value_expected}
