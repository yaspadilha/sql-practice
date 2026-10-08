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

- Quantidade de faltas nas consultas pra cada paciente
- Quantidade de pacientes atendidos por médico em determinado mês
- Custo estimado de convênio por período
- Pacientes sem consulta nos últimos 6 meses
- Inadimplência de planos por convênio