# 🏨 Hotel

Banco fictício de um hotel para gerenciamento de hóspedes, reservas e serviços.

## Tabelas e campos

- **enderecos** — `id`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `estado`
- **hospedes** — `id`, `nome`, `cpf`, `email`, `telefone`, `id_endereco`
- **tipos_quarto** — `id`, `nome`, `descricao`, `capacidade`, `diaria`
- **quartos** — `id`, `numero`, `andar`, `id_tipo`, `status`
- **reservas** — `id`, `id_hospede`, `id_quarto`, `data_checkin`, `data_checkout`, `status_reserva`
- **servicos** — `id`, `nome`, `preco`
- **consumos** — `id`, `id_reserva`, `id_servico`, `quantidade`, `data`
- **funcionarios** — `id`, `nome`, `cargo`, `salario`, `data_admissao`

### Relacionamentos

```
enderecos       ← hospedes
tipos_quarto    ← quartos
hospedes        ← reservas → quartos
reservas        ← consumos → servicos
```

## 📌 Queries exploradas

- Quartos disponíveis em um período específico
- Taxa de ocupação por mês
- Receita total por tipo de quarto
- Hóspedes com mais de uma estadia
- Serviços mais consumidos
- Reservas canceladas por período

## 📌 Status

Em desenvolvimento — queries adicionadas conforme avanço nos estudos.