# 🏗️ Construtora

Banco fictício de uma construtora para gerenciamento de obras, contratos, funcionários e materiais.

## Tabelas e campos

- **clientes** — `id`, `nome`, `cpf_cnpj`, `email`, `telefone`
- **obras** — `id`, `nome`, `id_cliente`, `data_inicio`, `data_prev_fim`, `data_fim`, `status`, `orcamento`
- **funcionarios** — `id`, `nome`, `cpf`, `cargo`, `salario`, `data_admissao`
- **alocacoes** — `id`, `id_funcionario`, `id_obra`, `data_inicio`, `data_fim`
- **fornecedores** — `id`, `nome`, `cnpj`, `telefone`, `email`
- **materiais** — `id`, `nome`, `unidade`, `preco_unitario`, `id_fornecedor`
- **compras** — `id`, `id_obra`, `id_material`, `quantidade`, `data_compra`, `preco_unitario`

### Relacionamentos

```
clientes        ← obras
funcionarios    ← alocacoes → obras
fornecedores    ← materiais
obras           ← compras   → materiais
```

## 📌 Queries exploradas

- Obras em andamento com custo total de materiais até o momento
- Obras atrasadas em relação à previsão de término
- Funcionários alocados em mais de uma obra simultaneamente
- Fornecedor com maior volume de materiais comprados
- Custo total por obra comparado ao orçamento
- Materiais mais comprados por categoria

## 📌 Status

Em desenvolvimento — queries adicionadas conforme avanço nos estudos.