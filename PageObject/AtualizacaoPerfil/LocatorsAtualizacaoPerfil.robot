*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LINK_PERFIL}                   //*[@id="leftPanel"]/ul/li[6]/a
${INPUT_LASTNAME}                //*[@id="customer.lastName"]
${INPUT_STREET}                  //*[@id="customer.address.street"]
${BOTAO_SALVAR}                  //*[@id="updateProfileForm"]/form/table/tbody/tr[8]/td[2]/input
${ERRO_LASTNAME}                 //*[@id="lastName-error"]
${ERRO_STREET}                   //*[@id="street-error"]
${CONFIRMAÇÃO_ATUALIZAÇÃO}       Xpath=//*[@id="updateProfileResult"]/h1
