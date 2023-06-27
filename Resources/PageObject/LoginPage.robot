*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LoginUsernameInputBox}   css:input[placeholder="Username"]
${LoginPasswordInputBox}    css:input[placeholder="Password"]
${LoginButton}  css:button[type="submit"]

*** Keywords ***
Input Username
    [Arguments]  ${Username}
    Input Text  ${LoginUsernameInputBox}  ${Username}

Input Password
    [Arguments]  ${Password}
    Input Text  ${LoginPasswordInputBox}  ${Password}

Click Login
    Click Element  ${LoginButton}