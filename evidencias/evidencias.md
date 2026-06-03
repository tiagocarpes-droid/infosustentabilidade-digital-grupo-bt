# 📂 Evidências do Projeto

Este documento reúne os registros, links e validações que comprovam a execução das etapas do projeto e a correta manipulação dos dados nas plataformas utilizadas.

---

## 🔍 Evidências da Pesquisa Anterior

### 1. Ecoponto Municipal de Resíduos Especiais (Rio do Sul)
* **Tipo de Evidência:** Website.
* **Descrição:** Comprovação da inauguração do Ecoponto físico localizado no Parque do Farol (Bairro Canoas) para entrega voluntária da população.
* **Data da Verificação:** 25/05/2026
* **Link/Fonte:** [Prefeitura de Rio do Sul](https://www.riodosul.sc.gov.br/cidadao/noticia/entrega-oficial-do-ecoponto-de-rio-do-sul-sera-na-quintafeira-16)

### 2. Associação Recicla Rio do Sul
* **Tipo de Evidência:** Website.
* **Descrição:** Página de divulgação institucional / campanhas integradas de recolhimento.
* **Data da Verificação:** 25/05/2026
* **Link/Fonte:** [Associação Recicla Rio do Sul](https://cdlriodosul.com.br)

### 3. Secretaria da Agricultura, Meio Ambiente e Pesca (Mirim Doce)
* **Tipo de Evidência:** Website.
* **Descrição:** Canal oficial para contato e informações de atendimento com a secretaria.
* **Data da Verificação:** 25/05/2026
* **Link/Fonte:** [Secretaria do Meio Ambiente](https://mirimdoce.sc.gov.br/pagina-6348/)

---

## 📊 Evidências da Planilha

* **Link do Google Sheets:** [Acesse a Planilha de Dados](https://docs.google.com/spreadsheets/d/1QEevjYDuKf4PMGQ7beyzwrYFjewioKHFY93ikFqohRA/edit?usp=sharing)
* **Lista das Abas Criadas:** * `Pontos de Coleta`
  * `Materiais Aceitos`
  * `Procedimentos de Descarte`
  * `Evidências`
  * `Análises Críticas`

---

## 🐙 Evidências do GitHub

Mapeamento de participação e divisão mínima de tarefas documentada no histórico do repositório:

* **Integrante 1 (Bruno Medeiros Caetano):** Criou e editou o conteúdo do arquivo `README.md`.
* **Integrante 2 (Cauan Brignoli):** Criou e editou o conteúdo do arquivo `evidencias.md`.
* **Integrante 3 (Tiago Brehmer Carpes):** Criou e editou os arquivos `modelo-dados.md`, `orientacao-descarte.md`, etc.

---

## ⚡ Evidências do Supabase

* **Nome do Projeto:** `tiagocarpes-droid's Project`
* **Organização:** `tiagocarpes-droid's Org`
* **Tabelas Criadas no Banco de Dados:**
  * `pontos_coleta` — Tabela base contendo o cadastro dos locais físicos mapeados.
  * `materiais_aceitos` — Relacionada à tabela base, contendo a triagem de eletrônicos aceitos.
  * `procedimentos_descarte` — Relacionada à tabela base, contendo as regras de horários e custos.
  * `evidencias` — Relacionada à tabela base, guardando os registros digitais de comprovação.
  * `analises_criticas` — Tabela independente armazenando as avaliações por município.

---

## 💻 Consulta SQL Executada?

* **Executada com Sucesso:** Sim.
* **Descrição da Operação:** O script SQL foi processado no editor nativo do Supabase. Foi realizada com êxito a inserção dos dados reais coletados na pesquisa, seguida pelo teste de cruzamento relacional via múltiplos comandos `INNER JOIN` ligando as chaves estrangeiras (`id_ponto`).
* **Dificuldades e Aprendizados do Grupo:** * *Dificuldades:* Entender inicialmente como funcionavam os relacionamentos e chaves estrangeiras (`REFERENCES`) para evitar dados órfãos, e ajustar a nomenclatura exata exigida pelo modelo padrão do professor.
  * *Aprendizados:* Compreendemos na prática como um banco de dados relacional é muito mais eficiente do que manter arquivos estáticos, permitindo que consultas complexas unifiquem dados de tabelas separadas em segundos através do `INNER JOIN`.
