*** Settings ***
Resource    ../../Settings/main.robot
Resource    LocatorsUpdateProfile.robot

*** Variables ***
${LASTNAME}    Macedo
${STREET}      Avenida Paulista


*** Keywords ***

E desejo atualizar as informações do meu perfil
    Wait Until Element Is Visible    ${LINK_PERFIL}
    Click Element    ${LINK_PERFIL}

Quando atualizo os campos corretamente
    Sleep    2s
    Input Text    ${INPUT_LASTNAME}    ${LASTNAME}
    Sleep    2s
    Input Text    ${INPUT_STREET}      ${STREET}
    Click Button    ${BOTAO_SALVAR}
    Capturar Print Na Pasta Da Funcionalidade    QBEF-01   PageObject/UpdateProfile/Screenshots

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
    Capturar Print Na Pasta Da Funcionalidade    QBEF-02    PageObject/UpdateProfile/Screenshots