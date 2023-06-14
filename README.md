# Testes_Automatizados_Robot
Este projeto tem o intuito de aprender a configurar e desenvolver automação em Python com o framework do Robot em um sistema windows.

passo 1 baixar python:

https://www.python.org/downloads/

nao esquecer de adicionar opçao Add Py to PATH

validar com 'pip --version'

passo 2 instalar robot e framework base:
comando 'pip install robotframework'

OBS: qualqr instalação de framework é feita via pip Ex. appium, selenium....


pip install robotframework-seleniumlibrary
 passo 3 instalar chromedriver

 baixar chromedriver com versao do navegador certa
 descompactar e colocar o chromedriver na raiz

 editar variaveis de ambiente:
 pesquisar no win, achar a variavel do py e copiar caminho até o scripts
 cola o link nas pastas do win, e colar o chrome driver executavel nele 

montar estrutura:

nome.robot

library selenium keywords

pra rodar colocar 'robot estrutura.robot'


option[contains(text(),"asd")]



no devtools estar na barra de elements e dar ctrl+F

//input[@type="text"]
//div[@class="t8qpF elYzab-cXXICe-Hjleke"]
//*[contains(text(),"14")]
//h2[@data-dragsource-ignore="true"]

 (//div[@class="zYZlv"]/h2[@data-dragsource-ignore="true"])[2] #começa no 1

pra rodar


downgrade do selenium pip install selenium==4.9.0
https://github.com/robotframework/SeleniumLibrary/issues/1835