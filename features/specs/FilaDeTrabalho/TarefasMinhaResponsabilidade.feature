#@language: pt @wip
#@Fila de trabalho - tarefas
#
#Funcionalidade: Fila de trabalho - tarefas sob minha responsabilidade
#    Eu como usuario logado
#    Com acesso a Fila de Trabalho Tarefas
#    Quero visualizar a tarefas sob minha responsabilidade
#    Para assim listar somente as tarefas em que sou responsável
#
#Contexto: Logar usuário
#    Dado que estou logado no sistema com o <Usuario>
#    E não possuo tarefa sob minha resposabilidade 
#
#@Cria <NumeroTarefas> tarefa com responsáveis <Usuario>
#Cenario: Visualização de tarefas sob sua responsabilidade
#    Quando eu acesso a fila de tarefas
#    E aplico o filtro Minha responsabilidade
#    Entao em filtros visualizo <NumeroTarefas> registros ao lado da Opção Minha responsabilidade
#    E na listagem visualizo <NumeroTarefas> sob minha responsabilidade
#    
#
#Exemplos:
#    | Usuario    | NumeroTarefas  |
#    | "softplan" | "0"            |
#    | "softplan" | "1"            | 
#    | "softplan" | "5"            | 
#
#@Cria <NumeroTarefas> tarefas com responsáveis <Unidade>
#Cenario: Tarefas sob resposabilidades da Unidade
#    Quando eu acesso a fila tarefas
#    E aplico o filtro Minha responsabilidade
#    Entao em filtros não visualizo  nenhum registro ao lado da Opção Minha responsabilidade
#    E na listagem não visualizo nenhum registro
#
#Exemplos:
#    | Usuario | NumeroTarefas  | Unidade |
#    | "softplan" | "0" | GAB |
#    | "softplan" | "1" | GAB |
#    | "softplan" | "5" | GAB |
#
#@Cria 1 tarefa com responsáveis <Unidade>, <Usuario> e <UsuarioAleatorio>
#@Cria 1 tarefa com responsáveis <Unidade>
#@Cria 1 tarefa com responsáveis <UsuarioAleatorio>
#@Cria 1 tarefa com responsáveis <Usuario>
#Cenario: Multiplas tarefas sob resposabilidades do Setor e usuários
#    Quando eu acesso a fila de tarefas
#    E aplico o filtro Minha responsabilidade
#    Entao em filtros visualizo 2 registros ao lado da Opção 
#    E na listagem de tarefas visualizo 2 registros
#
#Exemplos:
#    | Usuario | UsuarioAliatorio | NumeroTarefas  | Unidade |
#    | "softplan" | "samuel" | "1" | "GAB" |
#
#
#Cenario: Combinar o filtro Minha resposabilidade com outro filtros 
#    Dado que possuo tarefas já cadastradas
#    Quando eu acesso a fila de tarefas
#    E aplico o filtro Minha responsabilidade
#    Entao em filtros não visualizo o valor <NumeroTarefas> ao lado da Opção 
#