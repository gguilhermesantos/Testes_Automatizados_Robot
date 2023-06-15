*** Settings ***
Resource     ../resources/settings.resource
Resource     ../elements/Login_Elements.resource
Library    SeleniumLibrary
Library    String

*** Keywords ***
Dado que acesso o site
    Open Browser     ${config_var.URL}    ${config_var.browser}
    Maximize Browser Window

Quando preencho ${campo}
    ${campoValue}=   Catenate    SEPARATOR=    ${campo}        Value
    #${campoValue}=   Set Variable   ${campo}Value
    Input Text        ${Login_Page.${campo}}     ${Login_Page.${campoValue}}

E clico no botão de ${botao}
    Click Element      ${Login_Page.${botao}}

Então verifico ${mensagem}
    Wait Until Element Is Visible        ${Login_Page.${mensagem}}
    Close Browser






#IF botao.split('_')[0] == "login"
    #IF ${campo}.split('_')[0] == "login"
    #    Input Text         ${Login_Page.${campo}.split('_')[1]}
    #ELSE
    #    log  ${Login_Page.mensagemErro}
    #END

  #      ${asdasd}=  Split String    ${campo}    _
 #   IF     ${asdasd} != "login"
 #       Input Text        ${Login_Page.userNameCorreto}       ${asdasd}[0]        #${Login_Page.userNameCorretoValue}
 #       Sleep    3
 #   ELSE
 #       log     ${Login_Page.mensagemErro}
#        Close Browser
#    END