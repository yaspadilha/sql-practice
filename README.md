# 🗄️ SQL Practice

Repositório de estudos de SQL com múltiplos cenários empresariais fictícios.
Cada pasta representa um banco de dados independente, com foco em praticar
desde queries básicas até conceitos mais avançados como JOINs, agregações e subqueries.

Faz parte do meu processo de aprendizado com foco em ciência de dados.

## 📁 Cenários

| Cenário | 
|---|
| [clinica-medica](./clinica-medica/) |
| [construtora](./construtora/) |
| [escola](./escola/) | 
| [hotel](./hotel/) | 

## 📂 Estrutura de cada cenário

```
nome-do-cenario/
├── README.md       — contexto do banco e queries exploradas
├── schema.sql      — criação das tabelas
├── seed.sql        — dados fictícios para popular o banco
└── queries/        — consultas
```

## ▶️ Como rodar qualquer cenário

1. Entre na pasta do cenário
2. Execute `schema.sql` no MySQL para criar as tabelas
3. Execute `seed.sql` no MySQL para popular com dados
4. Rode as queries no MySQL Workbench, DBeaver ou similar

> **Obs:** os scripts foram escritos e testados em MySQL. Pequenas adaptações podem ser necessárias para outros SGBDs.

## 🛠️ Tecnologias

- SQL (MySQL)
- MySQL Workbench / DBeaver

## 📌 Status

Em desenvolvimento — novos cenários e queries adicionados conforme avanço nos estudos.