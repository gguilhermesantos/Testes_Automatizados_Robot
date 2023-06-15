*** Settings ***
library         SeleniumLibrary
Resource        ../step_definitions/step_login.robot

*** Test Cases ***
Cenário: Login sem senha
  [Tags]    login
  Dado que acesso o site
  Quando preencho userNameCorreto
  E clico no botão de btnLogin
  Então verifico mensagemSenhaNecessaria

Cenário: Usuario bloqueado
  [Tags]    login
  Dado que acesso o site
  Quando preencho userNamebloqueado
  Quando preencho senha
  E clico no botão de btnLogin
  Então verifico mensagemuserBloqueado

Cenário: Login sem dados
  [Tags]    login
  Dado que acesso o site
  E clico no botão de btnLogin
  Então verifico mensagemuserNecessaria
  
Cenário: login com sucesso
  [Tags]    login
  Dado que acesso o site
  Quando preencho userNameCorreto
  Quando preencho senha
  E clico no botão de btnLogin
  Então verifico mensagemcomSucesso