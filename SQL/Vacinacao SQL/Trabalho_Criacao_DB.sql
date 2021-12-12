CREATE TABLE pessoa (
   cpf BIGINT PRIMARY KEY NOT NULL,
   nome VARCHAR(70) NOT NULL,
   dt_nascimento DATE NOT NULL,
   email VARCHAR(40)
);

CREATE TABLE profissional (
   cpf BIGINT PRIMARY KEY NOT NULL,
   nome_profissional VARCHAR(70) NOT NULL,
   funcao VARCHAR(70) NOT NULL,
   telefone BIGINT
);

CREATE TABLE vacina (
   id INTEGER PRIMARY KEY NOT NULL,
   nome_vacina ENUM ('Pfizer', 'Moderna', 'Coronavac', 'AstraZeneca') NOT NULL,
   fabricante VARCHAR(50) NOT NULL
);

CREATE TABLE vacinacao (
   id_vacinacao INTEGER PRIMARY KEY NOT NULL,
   dt_dose1 DATE DEFAULT NULL,
   dt_dose2 DATE DEFAULT NULL,
   
	pessoa_cpf BIGINT NOT NULL,
   profissional_cpf BIGINT NOT NULL,
   vacina_id INTEGER NOT NULL,
   FOREIGN KEY(pessoa_cpf) REFERENCES pessoa(cpf),
   FOREIGN KEY(profissional_cpf) REFERENCES profissional(cpf),
   FOREIGN KEY(vacina_id) REFERENCES vacina(id)
);
