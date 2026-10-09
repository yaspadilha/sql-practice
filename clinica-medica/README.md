# 🩺 Clínica Médica

Banco fictício de uma clínica médica com múltiplos médicos, convênios e controle de consultas.

## Tabelas e campos

- enderecos — id, rua, numero, complemento, bairro, cidade, estado
- convenios — id, nome, mensalidade
- pacientes — id, nome, cpf, data_nasc, telefone, email, id_endereco
- planos_paciente — id, id_paciente, id_convenio, data_adesao, status_pgto
- especialidades — id, nome
- medicos — id, nome, crm, id_especialidade
- consultas — id, id_medico, id_paciente, data, hora, duracao_min, presenca_paciente

### Relacionamentos

```
enderecos       ← pacientes
convenios       ← planos_paciente → pacientes
especialidades  ← medicos
medicos         ← consultas → pacientes
```

## 📌 Queries exploradas

- [Quantidade de faltas nas consultas pra cada paciente](./queries/01_faltas_no_mes.sql)
- [Pacientes sem consulta nos últimos 6 meses](./queries/03_pacientes_sem_consulta_ultimos_6_meses.sql)
- [Inadimplência de planos por convênio](./queries/02_inadimplencia_por_convenio.sql)