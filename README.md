# Trabalho Final — Banco de Dados 

**UNOESC Chapecó** | Prof. Álvaro Gianni Pagliari  
**Acadêmicos:** Vinicus Rama, Alberto Buzzolaro.


## Sobre

Módulo de internação hospitalar desenvolvido sobre o banco `clinica` da disciplina. Gerencia alocação de pacientes em leitos, com controle de entrada e saída.


## Tabelas criadas

- `quartos` — quartos vinculados aos ambulatórios
- `leitos` — leitos dos quartos com controle de status
- `internacoes` — registro de internações vinculando paciente, médico e leito
  

## Objetos implementados

**View** `vw_internacoes_ativas` — lista internações em andamento com dados do paciente, médico e leito.

**Procedure** `sp_registrar_internacao` — valida disponibilidade do leito, registra a internação e atualiza o status do leito.

**Trigger** `tg_liberar_leito` — ao informar a data de saída, libera o leito automaticamente.


## Estrutura

├──schema/
├── views/           
├── procedures/     
├── triggers/        
├── dados/          
├── diagramas/      
└── apresentacao/  


## Tecnologias

- PostgreSQL / DBeaver
- brModelo (diagramas)
- GitHub (versionamento)
