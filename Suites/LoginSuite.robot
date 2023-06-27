*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PageObject/LoginPage.robot
Resource  ../Resources/PageObject/HomePage.robot
Resource  ../Resources/PageObject/Common.robot
Variables   ../Devdata/Env.py
Variables    ../Devdata/Logindata.py

*** Test Cases ***
Login successfully
    [tags]  Smoke
    Opening Browser  ${baseUrl}  ${browser}
    Input Username      ${Username}
    Input Password      ${Password}
    Click Login
    Verify Welcome Text is Visible
    Logout
    Close Browser