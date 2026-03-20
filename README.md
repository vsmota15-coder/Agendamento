# Sistema de Agendamento

Aplicação web desenvolvida em Ruby on Rails para gerenciamento de agendamentos.

## Funcionalidades

- Cadastro de horários disponíveis
- Agendamento por clientes com nome e telefone
- Horário marcado como ocupado automaticamente após agendamento
- Painel admin com listagem de todos os agendamentos
- Validações para evitar horários duplicados

## Tecnologias

- Ruby on Rails 8
- SQLite
- Bootstrap 5

## Como rodar localmente

​```bash
git clone https://github.com/vsmota15-coder/Agendamento.git
cd Agendamento
bundle install
rails db:migrate
rails server
​```

Acesse http://localhost:3000/slots