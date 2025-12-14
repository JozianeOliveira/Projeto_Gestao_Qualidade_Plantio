# 🌱 Gestão da Qualidade no Processo de Plantio Agrícola

## 📄 Documento Completo do Projeto (PDF)

O projeto completo, com toda a documentação consolidada (contexto, BPMN, requisitos, regras de negócio, DER, indicadores e conclusões), está disponível em formato PDF:

👉 **[Acessar PDF do Projeto](docs/00_Gestão da Qualidade no Processo de Plantio Agrícola.pdf)**

---

## 📌 Visão Geral
Este projeto apresenta um *estudo de caso completo de Análise e Implantação de Sistemas, com foco no **mapeamento de processos, **gestão da qualidade, **definição de regras de negócio* e *proposta de solução sistêmica* para o processo de plantio agrícola.

O objetivo é demonstrar a atuação do *Analista de Sistemas* como elo entre negócio, operação e tecnologia, traduzindo processos reais em soluções estruturadas e orientadas a dados.

---

## 🎯 Objetivos do Projeto
- Mapear o processo de plantio agrícola de ponta a ponta  
- Identificar pontos críticos e oportunidades de melhoria  
- Definir requisitos funcionais e não funcionais  
- Documentar regras de negócio para avaliação de qualidade  
- Propor uma solução sistêmica para controle e indicadores  
- Demonstrar boas práticas de análise e documentação  

---

## 🧩 Escopo
### Inclui:
- Mapeamento de processos (AS IS e TO BE)  
- Levantamento e documentação de requisitos  
- Definição de regras de negócio  
- Proposta de solução conceitual  
- Indicadores de qualidade e desempenho  

### Não inclui:
- Implementação completa da aplicação  
- Integrações com sistemas reais  
- Uso de dados reais de empresas  

---

## 👥 Stakeholders
- Gestor Agrícola  
- Apontador  
- Plantadores  
- Caixeiros  
- Varredores  
- Analista de Sistemas  

---

## 🔄 Processo Mapeado
O processo foi dividido em *7 pontos de controle*, permitindo análise detalhada da operação:

1. Chegada das sementes ao campo  
2. Transporte interno  
3. Distribuição das sementes  
4. Coleta pelos plantadores  
5. Plantio  
6. Cobertura das sementes  
7. Avaliação pós-plantio  

Cada ponto foi analisado considerando riscos, controles e possibilidade de apontamento sistêmico.

---

## 📋 Requisitos
### Funcionais
- Registro de entrada e distribuição de sementes  
- Apontamento de produção individual  
- Avaliação da qualidade do plantio  
- Cálculo de bonificação  
- Avaliação pós-plantio  

### Não Funcionais
- Usabilidade em ambiente rural  
- Rastreabilidade das informações  
- Confiabilidade dos dados  
- Segurança de acesso  

---

## 📏 Regras de Negócio
As regras de avaliação permitem mensurar a qualidade do serviço executado, podendo ou não impactar a remuneração dos colaboradores.

*Exemplos de regras:*
- Plantio raso ou fundo  
- Semente deitada ou virada  
- Cova sem plantio  
- Espaçamento inadequado  

As regras possuem:
- Tipo (Sim/Não ou Numérico)  
- Peso configurável  
- Faixas de tolerância  
- Incidência sobre bonificação (valor ou porcentagem)  

---

## 🛠️ Proposta de Solução
A solução proposta é composta por:

- *Aplicativo mobile* para apontamentos em campo  
- *Backend* para regras de negócio e cálculos  
- *Banco de dados relacional*  
- *Painéis de indicadores* (ex.: Power BI)  

Essa abordagem permite padronização, transparência e apoio à tomada de decisão.

---

## 📊 Indicadores
- Quantidade de sementes utilizadas  
- Índice de desperdício  
- Qualidade do plantio por colaborador  
- Produtividade individual e por equipe  
- Percentual de germinação  
- Valor de bonificação  

---

## 📂 Estrutura do Repositório

PROJETO_GESTAO_QUALIDADE_PLANTIO
│
├── README.md
├── LICENSE
├── .gitattributes
│
├── docs
│   ├── 00_Gestão da Qualidade no Processo de Plantio Agrícola.pdf
│   ├── 01_Contexto_do_Projeto.md
│   ├── 02_Escopo_do_Projeto.md
│   ├── 03_Stakeholders.md
│   ├── 04_Mapeamento_de_Processos.md
│   ├── 05_Requisitos.md
│   ├── 06_Regras_de_Negocios.md
│   ├── 07_Proposta_de_Solucao.md
│   ├── 08_Indicadores.md
│   ├── 09_Resultados_Esperados.md
│   └── 10_Consideracoes_Finais.md
│
├── processos
│   ├── processo-plantio-as-is.bpmn
│   ├── processo-plantio-to-be.bpmn
│   └── Processos_Plantio_BPMN.md
│
├── banco_de_dados
│   ├── DER.md
│   ├── DER_Modelo_Dados.md
│   ├── DER.png
│   ├── Queries_SQL_Indicadores.md
│   └── script.sql

---

## 📈 Resultados Esperados
- Melhoria da qualidade do plantio  
- Redução de desperdícios  
- Aumento da produtividade  
- Maior controle gerencial  
- Base de dados confiável para decisões estratégicas  

---

## 🧠 Aprendizados
Este projeto evidencia a importância de processos bem definidos e regras claras como base para soluções tecnológicas eficientes, reforçando o papel estratégico do Analista de Sistemas na implantação de sistemas.

---

## 👩‍💻 Autora
*Joziane Oliveira*  
Analista de Sistemas / Implantação  

🔗 [LinkedIn](https://www.linkedin.com/in/joziane-oliveira/)  
💻 [GitHub](https://github.com/JozianeOliveira)

---

## ⚠️ Observações
Este é um *projeto de estudo e portfólio*, baseado em cenário fictício, sem uso de dados ou informações confidenciais.