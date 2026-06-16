-- public.vw_internacoes_ativas fonte

CREATE OR REPLACE VIEW public.vw_internacoes_ativas
AS SELECT i.codi,
    p.nome AS paciente,
    m.nome AS medico,
    m.especialidade,
    l.codl AS leito,
    q.numero AS quarto,
    a.andar,
    i.data_entrada,
    i.motivo
   FROM internacoes i
     JOIN pacientes p ON p.codp = i.codp
     JOIN medicos m ON m.codm = i.codm
     JOIN leitos l ON l.codl = i.codl
     JOIN quartos q ON q.codq = l.codq
     JOIN ambulatorios a ON a.nroa = q.nroa
  WHERE i.data_saida IS NULL;