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


https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html


pros logs nao ficarem aparecendo *mudar estrutura*
pra criar pasta de logs
criar pasta

robot -d reports bdd.robot

para rodar um cenario em especifico

robot -d reports -t "cenario x: asdasdasdasdasd" bdd.robot

pra rodar varios arquivos, colocar os arquivos numa pasta, e rodar a pasta

robot -d reports nome_da_pasta

utilização de tags

antes da primeira keyword colocar
 [tag] teste_1

robot -d reports -i teste_1 pasta_do arquivo


sobre arquivo report.html

nele tem estatisticas total, por tag e por pasta(suite)

sobre arquivo log.html

mostra os passos da execução a nivel de codigo

estrutura bdd

criar pasta de elementos 
criar pasta de recursos
criar pasta de steps 
criar pasta de tests - features

em recursos:
criar settings.resource ou .robot pq nao utiliza keywords, apenas variaveis
nesse arquivo fica settings e variables

em Elements:
pode separar por pagina (cada um em uma pasta)
Ex. Home_elements.resouce
Conceito de dicionario de dados/ em vez de uma variavel pra cada xpath vai usar uma lista que contem as infos 
vai ficar como arquivos Json que ja uso
colocar como:
'''
&{Home_Page}
...    A_Signup=//a[@href="https://www.phptravels.net/signup"]
'''
e para chamar ${Home_Page.A_Signup}

 é possivel criar um "importador" Main_elements.resorce vai importar todos os arquivos e quando alguem precisar importa do o main
nele vai ter:
Resorce     path/ate/arquivo

 Em steps, criar um pasta para passos repetidos, ex. logins e criar tambem um Main_steps é um step_definitions 

 E em testes criar pastas para os testes diferentes TC01 caso de teste

 Caso o teste precise de variaveis da pra criar dentro do ".feature" uma parte de variaveis

 https://github.com/robotframework/robotframework/blob/master/atest/testdata/standard_libraries/string/split_string.robot

${str1} =   Catenate    Hello   world   
${str2} =   Catenate    SEPARATOR=---   Hello   world
${str3} =   Catenate    SEPARATOR=  Hello   world
=>
${str1} = 'Hello world'
${str2} = 'Hello---world'
${str3} = 'Helloworld'