*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LoginUsernameInputBox}   css:input[placeholder="Username"]

*** Keywords ***
Opening Browser
    [Arguments]  ${site_url}  ${browser}
    Open Browser  ${site_url}  ${browser}
    Wait Until Element Is Visible  ${LoginUsernameInputBox}  timeout=5