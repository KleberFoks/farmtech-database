# Modelagem de Banco de Dados - FarmTech Solutions 🌱

Este projeto faz parte da Fase 2 - Capítulo 1 da disciplina de Banco de Dados na FIAP. Desenvolvi a modelagem de um sistema para controle de sensores agrícolas utilizados em plantações para irrigação e aplicação de nutrientes.

## 🔧 Objetivo

Criar o Modelo Entidade-Relacionamento (MER) e o Diagrama Entidade-Relacionamento (DER) de um sistema que:

- Armazena leituras dos sensores (umidade, pH, nutrientes)
- Registra aplicações de água, fósforo e potássio nas plantações
- Permite análise histórica e otimização da produção

## 🧱 Entidades e Atributos

### 📋 Sensor
- `id_sensor` (Number) - **PK**
- `tipo_sensor` (Varchar2(50))
- `modelo` (Varchar2(50))

### 🌾 Plantacao
- `id_plantacao` (Number) - **PK**
- `nome_cultura` (Varchar2(50))
- `localizacao` (Varchar2(100))
- `area_hectares` (Number)

### 📊 LeituraSensor
- `id_leitura` (Number) - **PK**
- `id_sensor` (Number) - **FK** → Sensor
- `id_plantacao` (Number) - **FK** → Plantacao
- `data_hora` (Timestamp)
- `valor_lido` (Number)

### 💧 AplicacaoRecursos
- `id_aplicacao` (Number) - **PK**
- `id_plantacao` (Number) - **FK** → Plantacao
- `data_hora` (Timestamp)
- `quantidade_agua` (Number)
- `quantidade_fosforo` (Number)
- `quantidade_potassio` (Number)

## 🔗 Relacionamentos

- **Sensor 1:N LeituraSensor**
- **Plantacao 1:N LeituraSensor**
- **Plantacao 1:N AplicacaoRecursos**

## 📁 Arquivos do Repositório

- `README.md` → Documentação do MER
- `modelo.dmd` → Arquivo do SQL Data Modeler
- `modelo.ddl` → Script SQL das tabelas
- `DER_FarmTechSolutions.png` → Imagem do DER (exportada do Data Modeler)

## 🧠 Observações

As relações foram implementadas no Oracle SQL Developer Data Modeler, com chave primária, chave estrangeira e tipos de dados definidos.

---

**Integrante:**  
Kleber Foks - RM562225  
Fase 2 – Capítulo 1  
FIAP
