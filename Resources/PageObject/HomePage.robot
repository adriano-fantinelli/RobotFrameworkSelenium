*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${WelcomeText}  css:.oxd-userdropdown-name
${LogoutButton}     css:[href="/web/index.php/auth/logout"]
${LoginUsernameInputBox}   css:input[placeholder="Username"]

*** Keywords ***
Verify Welcome Text is Visible
    Wait Until Element Is Visible  ${WelcomeText}    timeout=5
    Element Should Be Visible  ${WelcomeText}  timeout=10

Logout
    CLick Element  ${WelcomeText}
    Wait Until Element Is Visible  ${LogoutButton}  timeout=5
    Click Element  ${LogoutButton}
    Wait Until Element Is Visible  ${LoginUsernameInputBox}  timeout=5