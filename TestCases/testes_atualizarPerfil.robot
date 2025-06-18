*** Settings ***
Resource             ../Resources/ResourcesAtualizarPerfil/VariaveisAtualizarPerfil.robot
Resource             ../Resources/VariaveisComuns.robot
Test Setup           Dado que eu acesse o site Parabank
Test Teardown        Fechar o navegador

*** Test Cases ***

QBEF - 01 Tentativa de atualizar o perfil com preenchimento correto
    [Tags]            update-profile
    Dado que o usuário fizer Login com Sucesso
    E desejo atualizar as informações do meu perfil
    Quando atualizo os campos corretamente
    Então o sistema deve exibir uma mensagem sobre a atualização

QBEF - 02 Tentativa de atualizar o Perfil com campos do formulário vazios
    [Tags]            update-profile
    Dado que o usuário fizer login com Sucesso
    E desejo atualizar as informações do meu perfil
    Quando deixo um ou mais campos vazios
    Então uma mensagem de erro sobre os campos vazios deve ser exibida
