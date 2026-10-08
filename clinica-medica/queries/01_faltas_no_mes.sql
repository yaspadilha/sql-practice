SELECT
    p.nome,
    COUNT(*) AS quantidade_de_faltas
FROM pacientes p
INNER JOIN consultas c
    ON p.id = c.id_paciente
WHERE c.presenca_paciente = 'N'
GROUP BY p.id, p.nome, c.presenca_paciente;