# 🎓 Escola

Banco fictício de uma escola para gerenciamento de turmas, disciplinas, avaliações e notas.

## Tabelas e campos

- **turmas** — `id`, `serie`, `letra`, `turno`
- **alunos** — `id`, `nome`, `cpf`, `data_nasc`, `email`, `id_turma`
- **professores** — `id`, `nome`, `cpf`, `email`, `telefone`
- **disciplinas** — `id`, `nome`, `carga_horaria`, `id_professor`
- **turma_disciplina** — `id`, `id_turma`, `id_disciplina`
- **avaliacoes** — `id`, `nome`, `tipo`, `peso`, `nota_maxima`, `data`, `id_disciplina`
- **notas** — `id`, `id_aluno`, `id_avaliacao`, `nota`

### Relacionamentos

```
turmas        ← alunos
turmas        ← turma_disciplina → disciplinas
professores   ← disciplinas
disciplinas   ← avaliacoes
avaliacoes    ← notas → alunos
```

## 📌 Queries exploradas

- Média ponderada dos alunos por disciplina considerando peso de cada avaliação
- Ranking de desempenho por turma
- Professor com maior número de avaliações aplicadas
- Alunos sem nota lançada em alguma avaliação
- Disciplina com maior índice de reprovação

## 📌 Status

Em desenvolvimento — queries adicionadas conforme avanço nos estudos.