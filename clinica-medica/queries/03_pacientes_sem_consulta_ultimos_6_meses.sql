SELECT p.id, p.nome
FROM pacientes p
WHERE NOT EXISTS (
    SELECT 1 
    FROM 
        consultas c 
    WHERE c.id_paciente = p.id 
      AND c.data >= DATE_SUB(CURRENT_DATE(), INTERVAL 6 MONTH)
);