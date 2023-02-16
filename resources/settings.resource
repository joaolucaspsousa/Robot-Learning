*** Settings ***
Library     AppiumLibrary
Resource    ../steps/balance_steps.robot

*** Variables ***
${APPIUM_SERVER}        http://localhost:4723/wd/hub
${AUTOMATION_NAME}      UiAutomator2
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     8.0
${DEVICE_NAME}          Pixel 6 PRO API 33
${APP}                  C:\\Users\\João Lucas\\Desktop\\Robot-Learning\\app\\nuclone.apk
${UDID}                 emulator-5554

*** Keywords ***
Open App
    Open Application
    ...    remote_url=${APPIUM_SERVER}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP}
    ...    automationName=${AUTOMATION_NAME}
    ...    udid=${UDID}

    # Checkpoint para garantir que o elemento foi carregado corretamente
    Wait Until Element Is Visible    accessibility_id=card-hero    timeout=10s

Close App
    Capture Page Screenshot
    Close Application