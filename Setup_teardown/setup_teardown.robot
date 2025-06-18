*** Settings ***
Resource        ../Settings/main.robot

*** Keywords ***
Dado que eu acesse o site Parabank
    Open Browser   url=${URL_DEV}    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser