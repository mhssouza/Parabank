*** Settings ***
Resource             ../../Settings/main.robot
Resource             ../../PageObject/Login/KeywordsLogin.robot

*** Keywords ***
Dado que o usuário fizer login com Sucesso
    Quando o usuário preenche o campo de login com as credenciais    ${USUARIO_VALIDO}    ${SENHA_VALIDO}
    Então deve ser redirecionado para a página inicial