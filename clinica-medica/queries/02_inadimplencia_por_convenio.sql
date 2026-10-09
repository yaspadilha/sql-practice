SELECT 
    c.nome, 
    COUNT(pl.status_pgto)
FROM convenios c 
INNER JOIN planos_paciente pl
    ON c.id = pl.id_convenio
WHERE pl.status_pgto = 'inadimplente'
GROUP BY c.nome