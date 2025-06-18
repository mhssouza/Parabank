*** Settings ***
Resource    ../PageObject/Login/LocatorsLogin.robot
Resource    ../PageObject/Transferencia/LocatorsTransferencia.robot
*** Keywords ***
Dado que eu acesse o site Parabank
    Open Browser   url=${BASE_URL}    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser