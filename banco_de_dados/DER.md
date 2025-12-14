erDiagram

    TURMA ||--o{ COLABORADOR : possui

    COLABORADOR ||--o{ APONTAMENTO_PRODUCAO : realiza
    ATIVIDADE ||--o{ APONTAMENTO_PRODUCAO : registra

    SERVICO_CAMPO ||--o{ ATIVIDADE : compoe

    MODELO_AVALIACAO ||--o{ REGRA_AVALIACAO : define

    COLABORADOR ||--o{ APONTAMENTO_AVALIACAO : recebe
    REGRA_AVALIACAO ||--o{ APONTAMENTO_AVALIACAO : aplica

    COLABORADOR ||--o{ BONIFICACAO : gera

    TURMA {
        int id_turma PK
        string nome_turma
        date data_inicio
        date data_fim
    }

    COLABORADOR {
        int id_colaborador PK
        string nome
        string funcao
        boolean ativo
        int id_turma FK
    }

    SERVICO_CAMPO {
        int id_servico PK
        string descricao
        string tipo_unidade
        decimal valor_unitario
    }

    ATIVIDADE {
        int id_atividade PK
        string nome
        int ponto_processo
        int id_servico FK
    }

    APONTAMENTO_PRODUCAO {
        int id_apontamento PK
        int id_colaborador FK
        int id_atividade FK
        decimal quantidade
        date data_apontamento
    }

    MODELO_AVALIACAO {
        int id_modelo PK
        string descricao
        boolean impacta_remuneracao
        string tipo_incidencia
    }

    REGRA_AVALIACAO {
        int id_regra PK
        int id_modelo FK
        string descricao
        string tipo_regra
        decimal peso
        int tolerancia_min
        int tolerancia_max
    }

    APONTAMENTO_AVALIACAO {
        int id_avaliacao PK
        int id_colaborador FK
        int id_regra FK
        int valor_apontado
        date data_avaliacao
    }

    BONIFICACAO {
        int id_bonificacao PK
        int id_colaborador FK
        decimal valor
        date data_referencia
    }
