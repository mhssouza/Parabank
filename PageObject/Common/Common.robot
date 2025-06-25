*** Settings ***
Resource             ../../Settings/main.robot
Resource             ../../PageObject/Login/KeywordsLogin.robot
Test Setup           Dado que eu acesse o site Parabank
Test Teardown        Fechar o navegador


*** Keywords ***
Capturar Print Na Pasta Da Funcionalidade
    [Arguments]    ${nome_arquivo}    ${caminho_da_pasta}
   Capture Page Screenshot     ${EXECDIR}/${caminho_da_pasta}/${nome_arquivo}.png

Fazer login com Sucesso
    Dado que o usuário esteja na tela de Login
    Quando o usuário preencher os campos de usuario e senha   ${USUARIO_VALIDO}    ${SENHA_VALIDO}
    Então deve ser redirecionado para a página inicial