SELECT pessoa.nome 
FROM pessoa 
WHERE pessoa.cpf IN 
(SELECT vacinacao.pessoa_cpf FROM vacinacao WHERE vacinacao.profissional_cpf = 
(SELECT profissional.cpf FROM profissional WHERE profissional.nome_profissional = 'Felix Pires'))