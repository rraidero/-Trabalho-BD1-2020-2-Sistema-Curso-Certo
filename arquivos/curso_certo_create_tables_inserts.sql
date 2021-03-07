drop table usuario cascade;
drop table permissao cascade;
drop table usuario_permissao cascade;
drop table area_conhecimento cascade;
drop table usuario_conhecimento cascade;
drop table plataforma cascade;
drop table curso cascade;
drop table curso_conhecimento cascade;
drop table comentario_curso cascade;
drop table avalia_comentario cascade;
drop table usuario_visita cascade;

create table if not exists usuario (
  codigo serial,
  email varchar,
  biografia text,
  nome varchar,
  senha varchar,
  dt_cadastro date,
  primary key (codigo)
);

insert into usuario (codigo, email, biografia, nome, senha, dt_cadastro) values
(1, 'carvalho95@uol.com.br', 'Hello world!', 'Júlio Carvalho Correia', 'Jui0$5-', '2020-01-16'),
(10000, 'jpedro@gmail.com', 'Professor, estou aqui para cadastrar os cursos que leciono. Qualquer interessado pode me procurar pelo email cursos_jp@gmail.com, ou pelo zap 031 97844-9999.', 'João Pedro S.', 'jp5741', '2020-03-02'),
(10001, 'amandinha_gf@outlook.com', 'Liberdade é pouco. O que eu desejo ainda não tem nome. - Clarisse Lispector', 'Amanda Gomes Fernandes', '654321', '2020-06-11'),
(10002, 'biel357@gmail.com', '', 'Gabriel A. Correia', 'coxinha123', '2020-09-29'),
(10003, 'laraapereira@hotmail.com', 'Lady Gaga + BTS.', 'Larinha', 'senhalara', '2020-10-02'),
(10004, 'manu_martins@ifes.edu.br', 'Do texto sem sentido à produção de sentidos. Adoro aprender!!! ❤❤❤❤', 'Manuela Martins Barros', 'barrospass', '2020-10-17'),
(10005, 'carl_lewis@aol.com', 'Se você não confiar em si, sempre irá encontrar uma maneira de não vencer.', 'Carl Lewis', 'olympicgames', '2020-11-05'),
(10006, 'russell_crowe@outlook.com', 'Meu nome é Maximus Decimus Meridius, comandante dos exércitos do norte, general das Legiões Felix… servo leal do verdadeiro Imperador, Marcus Aurelius. Pai de um filho assassinado, marido de uma esposa assassinada. E terei minha vingança, nesta vida ou na próxima.', 'Russell Crowe', 's25E7r4-l1rtw', '2020-11-08'),
(10007, 'margrett_beaumont@hotmail.com', '', 'B. Margarete', 'beaumonJ', '2020-11-13'),
(10008, 'valorie_george@zohomail.com', 'Buscando bons cursos para aprimorar meus conhecimentos.', 'Valorie G O.K.', '25477811556', '2020-12-05');


create table if not exists permissao (
  permissao integer,
  desc_permissao text,
  primary key (permissao)
);

insert into permissao (permissao, desc_permissao) values
(1, 'Técnico de apoio ao usuário.'),
(2, 'Administrador de banco de dados.'),
(3, 'Analista/Especialista/Administrador de redes.'),
(4, 'Analista de sistemas.'),
(5, 'Analista de segurança da informação.'),
(6, 'Programador.'),
(7, 'Pode fazer a verificação de cursos.'),
(8, 'Pode emitir relatórios.'),
(9, 'Não pode criar cursos.'),
(10, 'Não pode postar comentários.');


create table if not exists usuario_permissao (
  cod_usuario integer,
  permissao integer,
  foreign key (cod_usuario) references usuario(codigo), 
  foreign key (permissao) references permissao(permissao) 
);

insert into usuario_permissao (cod_usuario, permissao) values
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(10000, 8),
(10004, 9),
(10007, 10);

create table if not exists area_conhecimento (
  codigo serial, 
  descricao text,
  primary key (codigo)
);

insert into area_conhecimento (codigo, descricao) values
(0, 'Culinária'),
(1, 'Ciências da Saúde'),
(2, 'Engenharia de Materiais e Metalúrgica'),
(3, 'Desenvolvimento de Softwares'),
(4, 'Pré-Vestibular'),
(5, 'Pedagogia'),
(6, 'Moda e Beleza'),
(7, 'Contabilidade Empresarial'),
(8, 'Música'),
(9, 'Esportes'),
(10, 'Elétrica');


create table if not exists usuario_conhecimento (
  cod_area_conhecimento integer,
  cod_usuario integer,
  foreign key (cod_area_conhecimento) 
    references area_conhecimento(codigo),
  foreign key (cod_usuario) 
    references usuario(codigo)
);

insert into usuario_conhecimento (cod_area_conhecimento, cod_usuario) values
(0, 10003),
(0, 10001),
(1, 10004),
(2, 10000),
(3, 1),
(4, 10002),
(5, 10004),
(6, 10001),
(6, 10004),
(7, 10007),
(9, 10005);

create table if not exists plataforma (
  codigo serial,
  nome varchar,
  dt_cadastro date,
  email varchar,
  link_plataforma varchar,
  primary key (codigo)
);

insert into plataforma (codigo, nome, dt_cadastro, email, link_plataforma) values 
(1, 'Confeitaria S.A', '2020-03-11', 'cursos@confeitaria.com.br', 'www.confeitaria.com.br'),
(2, 'cursosgratis.net', '2020-03-13', 'duvidas@cursosgratis.net', 'www.cursosgratis.net'),
(3, 'Senai Vitória', '2020-05-08', 'cursos@senai-es.com.br', 'www.senai.com.br'),
(4, 'Laboratórios Genuíno', '2021-02-03', 'contato@laboratorios-genuino.com.br', null),
(5, 'Senai São Paulo', '2020-10-13', 'cursos@senai-sp.com.br', 'www.senai.com.br'),
(6, 'Clinica Educação', '2020-10-18', 'atendimento@clinicaeducacao.com', 'www.clinicaeducacao.com'),
(7, 'Cursos Online Educação', '2020-10-31', 'contato_cursosonline@gmail.com', 'www.cursosonline.com'),
(8, 'Padaria Nova Era', '2021-01-21', 'contato@padaria-nova-era.com.br', 'www.padaria-nova-era.com.br'),
(9, 'Senai Serra', '2020-08-17', 'cursos@senai-es.com.br', 'www.senai.com.br'),
(10, 'Contabilidade Teixeira', '2021-02-21', 'cteixeira@uol.com.br', 'www.facebook.com.br/cteixeira');

create table if not exists curso (
  codigo serial,
  nome varchar,
  carga_horaria float,
  descricao text,
  valor float,
  link_curso varchar,
  cod_plataforma integer,
  dt_criacao date,
  cod_usuario integer,
  primary key (codigo),
  foreign key (cod_usuario) references usuario(codigo),
  foreign key (cod_plataforma) references plataforma(codigo)
);

insert into curso (codigo, nome, carga_horaria, descricao, valor, link_curso, cod_plataforma, dt_criacao, cod_usuario) values
(1, 'Confeitaria Básica II', 16, 'Produzir produtos, em escala industrial ou não, realizar a gestão da produção e desenvolver produtos, elementos de decoração e processos de confeitaria, atendendo as normas e procedimentos técnicos, de qualidade, higiene e saúde e de meio ambiente.', 29.9, 'www.confeitaria.com.br/curso/basico-ii', 1, '2020-03-11', 1),
(2, 'Introdução ao PHP', 5, 'Neste curso aprenderemos o básico da Linguagem de Programação PHP através de um exemplo prático.', 0, 'www.cursosgratis.net/phpbasico', 2, '2020-03-13', 1),
(3, 'Soldador No Processo Eletrodo Revestido em Aço Carbono', 240, 'Proporcionar o desenvolvimento das capacidades técnicas, sociais, metodológicas e organizativas referente à qualificação profissional em Soldador no Processo Eletrodo Revestido Aço Carbono.', 600, 'www.senai.com.br', 3, '2020-05-08', 10000),
(4, 'TÉCNICO EM ENFERMAGEM', 1800, 'O TÉCNICO EM ENFERMAGEM ATUA NA PROMOÇÃO DA SAÚDE E NO ATENDIMENTO DAS NECESSIDADES DE PACIENTES E DA COMUNIDADE, EM TODAS AS FAIXAS ETÁRIAS. Estão entre suas principais atribuições promover ações de orientação e preparo do paciente para exames, além de realizar cuidados de enfermagem, como curativos, administração de medicamentos e vacinas, nebulizações, banho de leito e verificação de sinais vitais.', 6700, 'www.clinicaeducacao.com/tecnico/enfermagem', 6, '2020-10-18', 10004),
(5, 'CURSO DE UNHAS DECORADAS', 25, 'Para quem trabalha com a beleza das unhas, fazer um curso de unhas decoradas online pode ser uma excelente opção para aumentar o portfólio, e com isso conseguir ainda mais clientes.', 9.9, 'www.cursosonline.com/archive/unhas-20014', 7, '2020-10-31', 10001),
(6, 'Contabilidade para Microempreendedores Individuais', 12, 'Profissionais da contabilidade e estudantes de ciências contábeis, consultores, analistas, auxiliares e assistentes da área Contábil, Fiscal, Trabalhista e Previdenciária e demais responsáveis envolvidos com a matéria. Em especial atende os escritórios DE SERVIÇOS CONTÁBEIS inscritos no SIMPLES NACIONAL para atendimento do disposto na Lei Complementar 123/2006 em seu Art. 18, Inciso XIV do § 5º-B, § 22-B e § 22-C.', 146, 'www.facebook.com.br/', 10, '2021-02-21', 10005),
(7, 'Completo sobre Pão Francês', 15, 'Público-alvo: Interessados e pessoas atuantes em empresas de todos os portes com fabricação própria. Profissionais envolvidos na execução de tarefas as quais o conteúdo se aplica. Objetivos: - Familiarizar os profissionais da área de produção e o empresário com o processo de fabricação do pão tipo francês,  - Informar o profissional da indústria sobre o melhor método de reconstrução de massas para o pão francês,  - Ajustar o tempo de fermentação ao tempo disponível para a produção do pão francês,  - Planejar a produção do pão francês, como forma de garantir que o produto sempre chegue à loja nos horários planejados. - Avaliar a qualidade do pão produzido pela empresa diariamente. - Gerenciar a produção a partir da quantidade de pães fabricados e do tempo de fermentação.', 129.9, 'www.padaria-nova-era.com.br/paofrances', 8, '2021-02-23', 10008),
(8, 'Manutenção Elétrica Predial', 360, 'A manutenção de instalações elétricas prediais é recomendada para garantir o pleno funcionamento dos sistemas elétricos instalados nos edifícios. Optar por um sistema de manutenção de instalações elétricas prediais evita a necessidade de grandes gastos com consertos, pois qualquer problema será identificado no início.', 1799.9, 'www.senai-sp.com.br', 5, '2021-02-23', 10000),
(9, '.NET Aplicado', 80, '.Net é um framework desenvolvido pela Microsoft que tem capacidade de executar e desenvolver sistemas de aplicações. Todos os códigos e linhas gerados pela tecnologia pode ser implementado em qualquer dispositivo que possua um framework.', 0, 'www.cursosgratis.net/phpbasico', 2, '2021-02-27', 1),
(10, 'Maquiagem Halloween', 34, 'Nesse modulo do curso de maquiagem, vamos lhe apresentar os produtos, materiais e pinceis utilizados  durante o curso. Vamos lhe ensinar, para que serve cada um deles e ainda dar dicas de como dar manutenção a seus queridinhos. Ainda nesse modulo vamos deixa de presente para você um PDF de todos os matérias necessários que uma maquiadora profissional precisa e ainda lhe ensinar para que serve cada um deles.', 64.5, 'www.cursosonline.com/maquiagem/halloween', 7, '2021-03-01', 10001);

create table if not exists curso_conhecimento (
  cod_area_conhecimento integer,
  cod_curso integer,
  foreign key (cod_area_conhecimento) 
    references area_conhecimento(codigo),
  foreign key (cod_curso) 
    references curso(codigo)
);

insert into curso_conhecimento (cod_area_conhecimento, cod_curso) values
(0, 1),
(3, 2),
(2, 3),
(1, 4),
(6, 5),
(7, 6),
(0, 7),
(10, 8),
(3, 9),
(6, 1);

create table if not exists comentario_curso (
  data_comentario date,
  comentario text,
  nota integer,
  cod_curso integer,
  cod_usuario integer,
  codigo serial,
  PRIMARY KEY (codigo),
  foreign key (cod_curso) references curso(codigo),
  foreign key (cod_usuario) references usuario(codigo)
);

insert into comentario_curso (data_comentario, comentario, nota, cod_curso, cod_usuario, codigo) values
('2021-04-01', 'Curso ótimo,  já consigo viver só com a renda dos meus bolos, professores atenciosos, muita prática.', 10, 1, 10003, 0),
('2021-04-01', 'Maneiro!', 9, 3, 10000, 1),
('2021-04-02', 'Joguei dinheiro no ralo. O lugar é imundo, a professora relaxada, estragou minha unha durante a aula.', 0, 5, 10004, 2),
('2021-04-03', 'O curso é muito básico, parece que está lidando com crianças.', 8, 2, 10002, 3),
('2021-04-07', '', 9, 1, 10008, 4),
('2021-04-08', 'Fiz o curso para fazer um bolo para o meu filho, a vizinha fofoqueira perguntou onde eu comprei. Hihihihihihihihi ADOREI!!!', 10, 1, 10004, 5),
('2021-04-09', 'Achei o curso interessante, mas é muito avançado pra quem não sabe nada de pães, principalmente com o cultivo de fermento fresco.', 9, 7, 10000, 6),
('2021-04-09', 'O professor tem 18 anos e passou mais tempo dando atenção pras meninas do que ensinando. O que eu tenho de experiência sobre programação ele não tem de linhas de códigos digitadas.', 0, 9, 10005, 7),
('2021-04-12', '', 2, 9, 1, 8),
('2021-04-13', 'Agora eu já consigo preparar meu próprio gatonet no prédio, obrigado Fernando.', 10, 8, 10005, 9);


create table if not exists avalia_comentario (
  cod_usuario integer,
  cod_comentario integer,
  like_deslike boolean,
  foreign key (cod_usuario) references usuario(codigo),
  foreign key (cod_comentario) references comentario_curso(codigo)
);

insert into avalia_comentario (cod_usuario, cod_comentario, like_deslike) values
(10001, 1, true),
(10004, 2, false),
(1, 4, true),
(10002, 4, false),
(1, 7, true),
(10008, 0, true),
(10005, 0, true),
(10007, 2, false),
(10001, 3, true),
(10007, 7, true);


create table if not exists usuario_visita (
  cod_usuario integer,
  cod_curso integer,
  dt_visita date,
  foreign key (cod_usuario) references usuario(codigo), 
  foreign key (cod_curso) references curso(codigo) 
);

insert into usuario_visita (cod_curso, cod_usuario, dt_visita) values
(1, 10003, '2021-04-01'),
(2, 10003, '2021-04-01'),
(3, 10000, '2021-04-01'),
(3, 10002, '2021-04-02'),
(4, 10001, '2021-04-02'),
(5, 10004, '2021-04-02'),
(2, 10002, '2021-04-03'),
(3, 10001, '2021-04-03'),
(6, 10004, '2021-04-03'),
(7, 10008, '2021-04-03'),
(8, 10007, '2021-04-03'),
(5, 10004, '2021-04-04'),
(1, 10008, '2021-04-07'),
(5, 10007, '2021-04-07'),
(6, 10000, '2021-04-07'),
(1, 10005, '2021-04-08'),
(7, 10004, '2021-04-08'),
(8, 10006, '2021-04-08'),
(9, 10008, '2021-04-08'),
(7, 10000, '2021-04-09'),
(9, 10005, '2021-04-09'),
(9, 1, '2021-04-12'),
(9, 1, '2021-04-12'),
(10, 10005, '2021-04-12'),
(10, 1, '2021-04-12'),
(1, 1, '2021-04-13'),
(1, 10002, '2021-04-13'),
(3, 10003, '2021-04-13'),
(4, 10000, '2021-04-13'),
(5, 10000, '2021-04-13'),
(8, 10005, '2021-04-13'),
(9, 1, '2021-04-13'),
(1, 10008, '2021-04-14'),
(1, 10005, '2021-04-14'),
(5, 10007, '2021-04-15'),
(2, 10001, '2021-04-17'),
(9, 10007, '2021-04-21');
