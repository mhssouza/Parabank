*** Settings ***
Resource             ../../Settings/main.robot
Resource             ../../PageObject/Login/KeywordsLogin.robot
Resource    ../Login/KeywordsLogin.robot

*** Keywords ***
Dado que o usuário fizer login com Sucesso
    Quando o usuário preencher os campos de login   ${USUARIO_VALIDO}    ${SENHA_VALIDO}
    Então deve ser redirecionado para a página inicial