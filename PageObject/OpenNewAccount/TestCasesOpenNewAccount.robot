*** Settings ***
Resource             ../../Settings/main.robot
Resource             KeywordsOpenNewAccount.robot


*** Test Cases ***

QBEF-01 Abrir uma nova conta com Sucesso
    [Tags]    new-account    Positive
    Dado que o usuário fizer login com Sucesso
    Quando desejo abrir uma nova conta com as opções válidas
    Então o sistema deve exibir uma mensagem de sucesso com o número da nova conta