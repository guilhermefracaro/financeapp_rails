# README

# 💰 Finance App (Rails)

Sistema de controle financeiro desenvolvido com Ruby on Rails.

## 📌 Sobre o projeto

Aplicação web para gerenciamento de receitas e despesas, permitindo ao usuário cadastrar transações, categorizá-las e visualizar um resumo financeiro com saldo atualizado.

## 🚀 Funcionalidades

- Cadastro de transações (receitas e despesas)
- Associação com categorias
- Cálculo automático de saldo
- Dashboard com resumo financeiro
- CRUD completo

## 🧠 Regras de negócio

- Transações podem ser do tipo `income` (receita) ou `expense` (despesa)
- O saldo é calculado automaticamente:
  
  saldo = receitas - despesas

- Cada transação pertence a:
  - um usuário
  - uma categoria

## 🛠️ Tecnologias utilizadas

- Ruby on Rails
- SQLite
- HTML, CSS
- Turbo (Rails)

## ▶️ Como rodar o projeto

```bash
git clone https://github.com/seu-usuario/finance-app-rails.git
cd finance-app-rails
bundle install
rails db:create
rails db:migrate
rails server
