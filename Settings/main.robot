*** Settings ***

## Bibliotecas ##
Library    SeleniumLibrary
Library    XML
Library    Screenshot

## Recursos ##
Resource    ../Environments/dev.robot
Resource    ../Environments/prod.robot
Resource    ../PageObject/Common/Common.robot

## Inicialização e Finalização do Teste ##
Resource     ../Setup_teardown/setup_teardown.robot
