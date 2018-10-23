class ConstantsCadastroProcesso
    #Titulo/Subtitulo
    attr_reader :titulo, :subtitulo 
       
    #botões
    attr_reader :buttonAnexos, :buttonEncaminhar, :buttonEtiquetas, :buttonRequerimentoComprovante, :buttonNovo 
    #Titulo Mensagem
    attr_reader :tituloMensagem, :mensagem, :labelOrgao, :labelProcesso, :fieldProcesso, :labelEntrada, :labelHora 
 
     def initialize
        @titulo = "Confirmação de Cadastro" 
        @subtitulo = "Dados do Processo" 
     
        #botões
        @buttonAnexos = "Anexos"
        @buttonEncaminhar = "Encaminhar"
        @buttonEtiquetas = "Etiquetas"
        @buttonRequerimentoComprovante = "Requerimento/Comprovante"
        @buttonNovo = "Novo"
 
        #Titulo Mensagem
        @tituloMensagem = "Operação realizada com sucesso"
        @mensagem = /Processo número SMA.(\d{6}\/\d{4}\-\d{2}) cadastrado com sucesso./
        @labelOrgao = "Órgão:"
        @labelProcesso = "Processo:"
        @fieldProcesso = /([A-Z,0-9]{3,10}).(\d{6}\/\d{4}\-\d{2})/
        @labelEntrada = "Entrada:"
        @labelHora = "Hora:"
     end
 end