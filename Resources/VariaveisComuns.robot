*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Library     XML
Resource    ../PageObject/setup_teardown.robot
Resource    ../Resources/ResourcesLogin/VariaveisLogin.robot

*** Keywords ***
Dado que o usuário fizer login com Sucesso
    Dado que o usuário preenche o campo de login com as credenciais    ${USUARIO_VALIDO}    ${SENHA_VALIDO}
    Então deve ser redirecionado para a página inicial