*** Settings ***
Library     AppiumLibrary
Resource    ./steps.robot

*** Keywords ***
Open App
    Open Application    http://localhost:4723/wd/hub
    ...    automationName=UiAutomator2
    ...    platformName=Android
    ...    deviceName=Pixel 6 PRO API 33
    ...    app=C:\\Users\\João Lucas\\Desktop\\Robot-Learning\\app\\nuclone.apk
    ...    udid=emulator-5554
  
    # Checkpoint para garantir que o elemento foi carregado corretamente
    Wait Until Element Is Visible    accessibility_id=card-hero    timeout=10s

Close App
    Capture Page Screenshot
    Close Application


