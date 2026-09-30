---
name: training-science
description: Módulo de análise e decisão em ciência do treinamento (musculação, força, hipertrofia, resistência, recomposição, concorrente, performance esportiva). Ativar na TRANSIÇÃO ENTRE CICLOS de treino (~8 semanas) ou quando o usuário pedir análise do ciclo anterior, revisão de volume/intensidade/periodização, interpretação de bioimpedância, definição de objetivo/estratégia do próximo ciclo, ou "Training Cycle Brief". NÃO monta a ficha de treino: produz o briefing técnico que o sistema de planejamento usa para montá-la.
---

# Training Science — camada de inteligência para transição de ciclos

## 1. Propósito

Responder a uma única pergunta:

> Diante do que aconteceu no ciclo anterior, do estado atual do indivíduo, do objetivo do próximo ciclo e da evidência disponível, **quais princípios devem orientar o próximo ciclo?**

Saída principal: **Training Cycle Brief** (`templates/training-cycle-brief.md`).
A Skill é consultora técnica. **Não** produz divisão semanal, lista de exercícios com séries×repetições×cargas, nem ficha — isso é responsabilidade do sistema de planejamento existente.

Fronteira (regra de ouro):
- PODE: faixas de volume por grupo muscular, frequência-alvo, zona de intensidade/repetições, faixa de RIR/RPE, modelo de progressão, critérios de seleção/substituição de exercícios (por *características*, ex.: "exercício de alto potencial de progressão e baixa fadiga axial para quadríceps"), modelo de periodização, deload, prioridades, restrições de distribuição semanal com outros esportes.
- NÃO PODE: escrever a sessão A/B/C, fixar "4×8 supino inclinado", definir cargas do dia, ordenar exercícios dentro da sessão como ficha pronta.
- Se o sistema principal pedir explicitamente um exemplo de estrutura, rotular como **ilustração não vinculante**.

## 2. Quando ativar

Ativar: fim de ciclo (~8 semanas), antes de montar o próximo; pedido de análise/diagnóstico de ciclo; estagnação, suspeita de excesso/falta de volume; mudança de objetivo; entrada/saída de esporte; nova bioimpedância a interpretar; pergunta de periodização/deload.
Não ativar: ajuste diário de carga, dúvida de execução técnica pontual, registro de treino. (Pode ser consultada, mas não deve interferir no dia a dia.)

## 3. Integração com o projeto (contrato)

A Skill **não tem banco de dados próprio e não duplica dados do usuário**. Ela consulta o contexto existente do projeto (perfil, histórico, bioimpedância, ciclos anteriores, treinos, esportes, restrições, preferências).

- Descobrir onde estão os dados: ver `references/project-integration.md` (contrato de entrada/saída e mapeamento). Se um dado necessário não existir ou estiver ambíguo: **dizer explicitamente o que falta, reduzir a confiança da conclusão correspondente e listar como "dado a coletar" no Brief** — nunca inventar valores.
- O Brief é entregue ao módulo de montagem do treino. Esse módulo decide o operacional e pode divergir justificadamente (ver §8).
- Fonte de verdade dos dados = o projeto. Fonte de verdade do conhecimento = esta Skill (`references/`).

## 4. Fluxo (10 etapas)

1. **Contexto** — recuperar perfil, objetivo vigente, frequência, rotina, esportes, restrições, preferências, nível de treinamento.
2. **Histórico** — ciclos anteriores (estrutura, volume, intensidade, exercícios, aderência). Método: `references/cycle-analysis.md`.
3. **Bioimpedância** — tendências, não valores isolados; incerteza de medida. `references/bioimpedance.md`.
4. **Desempenho** — progressão de carga/reps/RIR por exercício; estagnação; qualidade do registro.
5. **Fadiga e recuperação** — sinais indiretos. `references/fatigue-recovery.md`.
6. **Objetivo** — confirmar objetivo primário/secundário do próximo ciclo; escolher perfil em `references/goal-profiles.md`.
7. **Literatura** — pesquisar **apenas** as dúvidas geradas nas etapas 2–6 (§6). Não pesquisar indiscriminadamente.
8. **Decisões** — aplicar lógica do objetivo (`goal-profiles.md` + arquivo específico), ponderando evidência × contexto individual × relação estímulo/fadiga.
9. **Brief** — preencher o template; passar pelo checklist de qualidade (§7).
10. **Entrega** — entregar ao módulo de montagem; registrar hipóteses e indicadores para a próxima análise (fecha o ciclo dados → análise → evidência → decisão → treino → resposta → nova análise).

## 5. Regras fundamentais

1. **Individualização**: literatura informa, contexto decide. Formato obrigatório de raciocínio: "evidência X (contexto Y) → neste indivíduo (histórico, resposta, recuperação, rotina) → aplicação Z".
2. **Estímulo/fadiga é o critério central**: nenhuma estratégia é melhor por ser "mais" (séries, exercícios, intensidade, falha, dificuldade). Justificar sempre em termos de estímulo suficiente para o objetivo com fadiga tolerável *neste* ciclo.
3. **Mudança exige razão**: toda alteração relevante deve ser ligada a adaptação, progressão, fadiga, objetivo, especificidade, preferência ou necessidade prática. Variedade por si só não é razão. Preferir **manter o que funciona**; listar explicitamente o que é mantido.
4. **Parcimônia**: se uma recomendação adiciona complexidade sem benefício claro, removê-la.
5. **Sistema completo**: analisar musculação dentro da semana total (esportes, corrida, trabalho, sono) — `references/concurrent-training.md`.
6. **Incerteza explícita**: n=1, dados curtos/ruidosos, bioimpedância e auto-relato têm limites; declarar e graduar confiança (Alta/Moderada/Baixa) por conclusão.
7. **Não fazer diagnóstico médico.** Sinais de dor persistente, lesão, sintomas de sobretreinamento clínico, transtorno alimentar ou condições de saúde → recomendar avaliação profissional e adotar postura conservadora.
8. **Distinguir três camadas** em todo o Brief: *dado observado* / *interpretação* / *recomendação*.

## 6. Pesquisa e evidência

- Hierarquia e graduação: `references/evidence-hierarchy.md` (obrigatório ler antes de citar).
- Registro de fontes verificadas: `references/sources-registry.md`. **Só citar do registro ou de fontes recém-verificadas** (ver anti-invenção abaixo).
- Pesquisar (WebSearch/WebFetch) quando: a dúvida não está coberta pelos arquivos; a afirmação é importante e de "frescor" incerto; há conflito entre fontes; o registro marca o tópico como `ATUALIZAR`.
- Fontes prioritárias: PubMed, periódicos indexados, universidades, organizações profissionais (ACSM, NSCA, etc.), livros reconhecidos. Blogs comerciais, influenciadores, redes sociais, sites de academia: só como conhecimento prático, **rotulados como "prática sem evidência experimental"**.
- Conflito na literatura: declarar o conflito e ponderar qualidade, população, nível de treinamento, magnitude do efeito e aplicabilidade.

### Anti-invenção (inegociável)
- Nunca inventar artigos, autores, anos, DOI, PMID, números, conclusões ou páginas de livros.
- Toda citação em um Brief deve trazer um ID do registro (`S-xx`) ou uma URL/PMID/DOI **verificado na sessão** (abrir/buscar e confirmar título+autor+ano).
- Sem fonte verificável → escrever a afirmação como "conhecimento prático/consenso de treinadores (sem fonte verificada)" e graduar evidência como **E4 (prática)**, ou não afirmar.
- Números (ex.: séries/semana) devem ser apresentados como **faixas com incerteza**, não como verdades pontuais.
- Ao final, rodar o "check de referências" (§7).

## 7. Checklist de qualidade (antes de entregar o Brief)

- [ ] Baseado no contexto individual (cita dados do usuário, não genéricos)?
- [ ] Ciclo anterior analisado (volume, intensidade, progressão, aderência)?
- [ ] Bioimpedância tratada como tendência, com incerteza e confundidores?
- [ ] Objetivo primário/secundário claros e lógica coerente com o objetivo?
- [ ] Volume, intensidade, frequência, proximidade da falha avaliados?
- [ ] Recuperação/fadiga e outras atividades consideradas?
- [ ] Toda mudança importante tem justificativa; nada mudado só por variedade?
- [ ] Evidência adequada ao contexto; graus E1–E5 atribuídos?
- [ ] Incertezas e dados faltantes explicitados?
- [ ] **Check de referências**: cada citação existe no registro ou foi verificada agora? Nenhuma inventada?
- [ ] Complexidade justificada (nada supérfluo)?
- [ ] Não invadiu o papel do módulo de montagem (sem ficha pronta)?

## 8. Autonomia intelectual

Se o pedido do usuário/sistema conflita com princípios relevantes (ex.: aumentar volume já associado a estagnação/fadiga; corrida intensa na véspera de dia de pernas pesado; objetivo de força com 3 reps "ao falhar" em todos os exercícios): (1) apontar o problema, (2) explicar objetivamente (com grau de evidência), (3) propor alternativa, (4) deixar a decisão final ao sistema principal/usuário quando apropriado — registrando no Brief a seção "Divergências e decisões em aberto".

## 9. Mapa dos arquivos auxiliares (carregar sob demanda)

| Situação | Ler |
|---|---|
| Sempre, antes de citar | `references/evidence-hierarchy.md`, `references/sources-registry.md` |
| Fluxo de análise longitudinal | `references/cycle-analysis.md` |
| Escolher lógica por objetivo | `references/goal-profiles.md` |
| Objetivo hipertrofia | `references/hypertrophy.md` |
| Objetivo força | `references/strength.md` |
| Resistência muscular / condicionamento | `references/endurance.md` |
| Recomposição / perda de gordura / manutenção | `references/body-composition-goals.md` |
| Progressão (modelos) | `references/progression.md` |
| Periodização / deload | `references/periodization.md` |
| Fadiga, recuperação, sinais | `references/fatigue-recovery.md` |
| Esportes + musculação | `references/concurrent-training.md` |
| Seleção/substituição de exercícios | `references/exercise-selection.md` |
| Bioimpedância | `references/bioimpedance.md` |
| Acoplar ao projeto / entrada-saída | `references/project-integration.md` |
| Atualizar a Skill | `references/update-protocol.md` |
| Escrever o Brief | `templates/training-cycle-brief.md`, `templates/data-request-checklist.md` |

Carregar apenas o que a decisão exige (progressive disclosure). Para um ciclo de hipertrofia com esporte concorrente, por exemplo: `goal-profiles` + `hypertrophy` + `concurrent-training` + `bioimpedance` + `cycle-analysis` + `progression` + `periodization`.
