 *** Settings ***
library     SeleniumLibrary

*** Variables ***
#dados da busca
${NomeDaMusica}    asd asdasdas

#variaveis de configuração
${URL} https://www.google.com
${browser} chrome

#Elementos
${tipoDoCampo_nome}             id:name
${textarea_address}             id:address
${button_submit}                //div[@class="t8qpF elYzab-cXXICe-Hjleke"]

*** Keywords ***
Dado que eu acesso o site asd
    Open Browser {URL}    ${browser}
Quando clicar
    Click Element ${button_submit}


*** Test Cases ***

Cenário 1: Teste de abrir navegador
    Dado que eu acesso o site asd
    Quando clicar
    Entao acabou

#OBS: caso seja ingles Given é reservado, ai a keyword fica só depois do given 
Cenário 2: Fechar navegador