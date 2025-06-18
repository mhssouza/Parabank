*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Library     XML
Resource    ../../PageObject/setup_teardown.robot
Resource    ../../PageObject/AtualizacaoPerfil/LocatorsAtualizacaoPerfil.robot

*** Keywords ***

E desejo atualizar as informações do meu perfil
    Wait Until Element Is Visible    ${LINK_PERFIL}
    Click Element    ${LINK_PERFIL}

Quando atualizo os campos corretamente
    Sleep    2s
    Input Text    ${INPUT_LASTNAME}    Macedo
    Sleep    2s
    Input Text    ${INPUT_STREET}      Avenida Paulista
    Click Button    ${BOTAO_SALVAR}

Então o sistema deve exibir uma mensagem sobre a atualização
    Sleep    3s
    Element Should Be Visible   ${CONFIRMAÇÃO_ATUALIZAÇÃO}

Quando deixo um ou mais campos vazios
    Sleep    2s
    Input Text    ${INPUT_LASTNAME}    ${EMPTY}
    Sleep    2s
    Input Text    ${INPUT_STREET}      ${EMPTY}

Então uma mensagem de erro sobre os campos vazios deve ser exibida
    Click Button    ${BOTAO_SALVAR}
    Sleep    1s
    Element Should Be Visible    ${ERRO_LASTNAME}
    Element Should Be Visible    ${ERRO_STREET}    