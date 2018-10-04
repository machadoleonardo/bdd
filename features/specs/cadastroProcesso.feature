 #language: pt
 @cadastro
Funcionalidade: Cadastrar processo digital
Eu como usuario protocolador
Quero efetuar o cadastro de processo digital
Para efetuar as devidas tratativas de assunto do interessado

Contexto: 
    Dado que estou logado no sistema

Cenario: Cadastro de Processo Digital
    Quando eu acesso o menu Cadastro de processo
    E informo o assunto do processo e avanço para a próxima etapa
    E preencho os dados básicos do cadastro
    E concluo o cadastro do Processo
    Entao o sistema exibe a confirmação de sucesso e o número do cadastro de processo