*** Settings ***
Resource             ../../Settings/main.robot
Resource             ../../PageObject/Login/KeywordsLogin.robot


*** Keywords ***
Capturar Print Na Pasta Da Funcionalidade
    [Arguments]    ${nome_arquivo}    ${caminho_da_pasta}
   Capture Page Screenshot     ${EXECDIR}/${caminho_da_pasta}/${nome_arquivo}.png

Dado que o usuário fizer login com Sucesso
    Quando o usuário preencher os campos de login   ${USUARIO_VALIDO}    ${SENHA_VALIDO}
    Então deve ser redirecionado para a página inicial