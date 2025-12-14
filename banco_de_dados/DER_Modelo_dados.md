🧩 1️⃣ DER — Modelo de Dados (conceitual)

📌 Visão Geral

O modelo foi pensado para:
	•	Rastrear quem fez
	•	o que foi feito
	•	em qual etapa
	•	com qual qualidade
	•	com impacto ou não na remuneração

⸻

🧱 Entidades Principais

👤 COLABORADOR

Representa qualquer pessoa envolvida no processo (plantador, caixeiro, varredor).

Campos principais:
	•	id_colaborador (PK)
	•	nome
	•	funcao
	•	ativo

⸻

👥 TURMA

Agrupa colaboradores que atuam juntos no plantio.
	•	id_turma (PK)
	•	nome_turma
	•	data_inicio
	•	data_fim

🔗 Relacionamento:
Turma 1 —— N Colaborador

⸻

🌱 SERVICO_CAMPO

Representa uma atividade produtiva (ex: plantio de alho).
	•	id_servico (PK)
	•	descricao
	•	tipo_unidade (ex: metro)
	•	valor_unitario

⸻

📋 ATIVIDADE

Etapa do processo (Plantio, Cobertura, Pós-plantio).
	•	id_atividade (PK)
	•	nome
	•	ponto_processo (1 a 7)

🔗 Serviço_Campo 1 —— N Atividade

⸻

📦 APONTAMENTO_PRODUCAO

Registro da produção realizada pelo colaborador.
	•	id_apontamento (PK)
	•	id_colaborador (FK)
	•	id_atividade (FK)
	•	quantidade
	•	data_apontamento

⸻

📊 MODELO_AVALIACAO

Define o modelo de avaliação de qualidade.
	•	id_modelo (PK)
	•	descricao
	•	impacta_remuneracao (boolean)
	•	tipo_incidencia (valor / porcentagem)

⸻

📏 REGRA_AVALIACAO

Cada critério avaliado (raso, fundo, deitado etc.).
	•	id_regra (PK)
	•	id_modelo (FK)
	•	descricao
	•	tipo_regra (sim_nao / numerica)
	•	peso
	•	tolerancia_min
	•	tolerancia_max

⸻

📝 APONTAMENTO_AVALIACAO

Registro da avaliação feita no campo.
	•	id_avaliacao (PK)
	•	id_colaborador (FK)
	•	id_regra (FK)
	•	valor_apontado
	•	data_avaliacao

⸻

💰 BONIFICACAO

Resultado financeiro da avaliação.
	•	id_bonificacao (PK)
	•	id_colaborador (FK)
	•	valor
	•	data_referencia

⸻

🔗 Relacionamentos (resumo)
	•	Colaborador → Turma
	•	Colaborador → Apontamento_Produção
	•	Colaborador → Apontamento_Avaliação
	•	Modelo_Avaliação → Regra_Avaliação
	•	Atividade → Apontamento_Produção