# TRABALHO 01:  Sistema Curso Certo
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Matheus de Souza Pereira de Oliveira:matheussouzapoliveira@gmail.com<br>
Rodrigo Raider de Oliveira:rodrigoraider@gmail.com<br>
Thaís de Souza:thais.souza.ifes@gmail.com<br>
...<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>
> **Curso Certo** é um sistema que contém indicações de cursos online de diversas áreas de conhecimento e metodologias, para que qualquer tipo de usuário se sinta a vontade e possa encontrar o **Curso Certo** para alavancar seus conhecimento e passar para um próximo nível. O ambiente é um compilado de informação de vários cursos de diferentes plataformas, metodologias e preços. Logo, o usuário não precisará ir em diferentes locais para encontrar o curso mais adequado para ele. Ao escolher o curso que deseja ele poderá ver com mais detalhes a carga horária, aonde ele pode comprar, ou se o curso é gratuíto e requisitos necessários para ele realizar o curso. O objetivo deste projeto é fazer com que as pessoas continuem aprendendo, de forma remota, em meio esta pandemia que estamos vivendo, com a metodologia que acharem mais adequada.

### 3.MINI-MUNDO<br>
> O sistema **Curso Certo** tem como objetivo transmitir conhecimentos entre as pessoas através de indicações de cursos online, indicados pelos próprios usuários. Para isso, é necessário que o sistema armazene algumas informações dos cursos e usuários. Referente aos usuários é necessario armazenar nome, email, mini-biografia e informar o tipo do usuário. Cada tipo de usuário tem diferentes permissões dentro da plataforma, como a permissão para colocar cursos, permissão para banir pessoas com segundas intenções ou excluir comentários maldosos. Para os cursos é necessario, armazenar o nome, quantidade de horas e uma descrição, o curso deverá estar relacionado à uma plataforma que terá as informações de contato como, nome, email e link para acessa-lá. O curso deve possuir uma ou mais uma áreas de conhecimento. Cada área de conhecimento deve possuir uma descrição. Além disso, o usuário pode fazer uma avaliação de satisfação com o curso, fornecendo uma nota e se desejar um comentário justificando tal nota, essa avaliação será vista pela comunidade que poderá dar likes/dislikes. Um usuário pode participar avaliar diversos cursos e, se desejar, indicar cursos de seu  gosto. Um usuário pode se interessar em uma ou mais áreas de conhecimento.

### 4.PROTOTIPAÇÃO, PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
As telas com as funcionalidades básicas propostas para o sistema **Curso Certo** estão condensadas no arquivo pdf anexado após a imagem abaixo. <br>

Ferramenta Utilizada: https://balsamiq.com/products/mockups/<br>

![Alt text](https://github.com/rraidero/-Trabalho-BD1-2020-2-Sistema-Curso-Certo/blob/master/images/trabalhobd_mockup-6.png?raw=true "Title")
![Arquivo PDF do Protótipo Balsamiq feito para Curso Certo](https://github.com/rraidero/-Trabalho-BD1-2020-2-Sistema-Curso-Certo/blob/master/arquivos/trabalhobd_mockup.pdf?raw=true "Empresa Curso Certo")
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    
> A Empresa Curso Certo precisa inicialmente dos seguintes relatórios:

* Relatório que mostra a quantidade de usuários ativos em um intervalo de data no sistema, retornando o total de usuários distintos que interagiram/acessaram algum curso, e a quantidade de usuários criados nesse período.
* Relatório que mostre as informações relacionadas a todos os cursos. Para cada linha obtida, um nome de curso do sistema, o nome da plataforma, o nome do usuário que o cadastrou, a data do cadastro, sua quantidade de visitas, quantidade de avaliações, média das avaliações e quantidade de comentários. Ordenados da maior avaliação média, pra menor.
* Relatório de cada categoria. A quantidade de cursos que pertence aquela categoria, a quantidade de empresas (diferentes) que fornece ao menos 1 curso daquela categoria, a quantidade de usuários que tem interesse nela. Ordenados pela quantidade de avaliações por usuário (qnt_avaliações / usuários que tem interesse na categoria).
* Relatório que retorne para cada plataforma cadastrada no sistema, o nome, data de cadastro, email, link, o total de avaliações, e o total de comentários. Ordenados pela maior média de avaliações dos cursos fornecidos pela plataforma.
* Relatório que retorne dado um período de tempo, em que cada linha contenha um dia, e a quantidade de usuários cadastrados, quantidade de cursos cadastrados, plataformas cadastradas, acesso a cursos, avaliações de cursos e comentários de cursos.
 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:
    
![Exemplo de Tabela de dados da Curso Certo](https://github.com/rraidero/-Trabalho-BD1-2020-2-Sistema-Curso-Certo/blob/master/arquivos/cursocerto-dados.xlsx?raw=true "Tabela - Empresa Curso Certo")
    
    
### 5.MODELO CONCEITUAL<br>
    A) Utilizar a Notação adequada (Preferencialmente utilizar o BR Modelo 3)
    B) O mínimo de entidades do modelo conceitual pare este trabalho será igual a 3 e o Máximo 5.
        * informe quais são as 3 principais entidades do sistema em densenvolvimento<br>(se houverem mais de 3 entidades, pense na importância da entidade para o sistema)       
    C) Principais fluxos de informação/entidades do sistema (mínimo 3). <br>Dica: normalmente estes fluxos estão associados as tabelas que conterão maior quantidade de dados 
    D) Qualidade e Clareza
        Garantir que a semântica dos atributos seja clara no esquema (nomes coerentes com os dados).
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas (Aplicar os conceitos de normalização abordados).   
        
![Alt text](https://github.com/discipbd1/trab01/blob/master/images/concept_sample.png?raw=true "Modelo Conceitual")
    
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


### 6	MODELO LÓGICO<br>
        a) inclusão do esquema lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL 
        (criação de tabelas, alterações, etc..) 
        
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
https://colab.research.google.com/drive/1ZDZkGNnceAoMtfFMdM1sgrlk3EyZTxOP?usp=sharing

># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 03: Itens 10 e 11<br>
<br>
<br>
<br> 



### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


