*** Settings ***
library     SeleniumLibrary

*** Variables ***
${variavel1}                    valor
${variavel2}                    123
${variavel3}                    asdasdas
${site}                         https://www.google.com.br/
${tipoDoCampo_nome}             id:name
${textarea_address}             id:address
${button_submit}                //div[@class="t8qpF elYzab-cXXICe-Hjleke"]
${browser} chrome

*** Keywords ***
Abrir site do google
    Open Browser site chrome

Fechar navegador
    Close Browser

preencher campos
    Input Text ${textarea_address}              algum texto
    Input Text ${tipoDoCampo_nomeDoCampo}       texto texto
    Click Element ${variavel1}
    sleep 1s

*** Test Cases ***
Cenário 1: Teste de abrir navegador
    Abrir site do google
    Close Browser
Cenário 2: Fechar navegador
    Open Browser https://www.google.com.br/    chrome
    Close Browser
Cenário 3: Visitar site
    Open Browser https://www.google.com.br/    chrome
    Close Browser
Cenário 4: melhorando Visitar site
    Abrir site do google