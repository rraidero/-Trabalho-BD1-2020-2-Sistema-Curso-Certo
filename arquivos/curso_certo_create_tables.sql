create table if not exists usuario (
  codigo serial,
  email varchar,
  biografia text,
  nome varchar,
  senha varchar,
  dt_cadastro date,
  primary key (codigo)
);

create table if not exists permissao (
  permissao integer,
  desc_permissao text,
  primary key (permissao)
);

create table if not exists usuario_permissao (
  cod_usuario integer,
  permissao integer,
  foreign key (cod_usuario) references usuario(codigo), 
  foreign key (permissao) references permissao(permissao) 
);

create table if not exists area_conhecimento (
  codigo serial, 
  descricao text,
  primary key (codigo)
);

create table if not exists usuario_conhecimento (
  cod_area_conhecimento integer,
  cod_usuario integer,
  foreign key (cod_area_conhecimento) 
    references area_conhecimento(codigo),
  foreign key (cod_usuario) 
    references usuario(codigo)
);

create table if not exists plataforma (
  codigo serial,
  nome varchar,
  dt_cadastro date,
  email varchar,
  link_plataforma varchar,
  primary key (codigo)
);

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

create table if not exists curso_conhecimento (
  cod_area_conhecimento integer,
  cod_curso integer,
  foreign key (cod_area_conhecimento) 
    references area_conhecimento(codigo),
  foreign key (cod_curso) 
    references curso(codigo)
);

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

create table if not exists avalia_comentario (
  cod_usuario integer,
  cod_comentario integer,
  like_deslike boolean,
  foreign key (cod_usuario) references usuario(codigo),
  foreign key (cod_comentario) references comentario_curso(codigo)
);

create table if not exists usuario_visita (
  cod_usuario integer,
  cod_curso integer,
  dt_visita date,
  foreign key (cod_usuario) references usuario(codigo), 
  foreign key (cod_curso) references curso(codigo) 
);