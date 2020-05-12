*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Visitar google
    Open browser    https://www.google.com   Chrome
    Sleep   5s
    close browser