# TRAINING-SCIENCE — PACOTE CONSOLIDADO (arquivo único)
Os caminhos citados no texto (ex.: references/hypertrophy.md) correspondem às seções '=== ARQUIVO: ... ===' abaixo.

=== ARQUIVO: SKILL.md ===

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

=== ARQUIVO: references/bioimpedance.md ===

# Bioimpedância (BIA) — como interpretar

**Princípio**: usar **tendência** em série padronizada, nunca valores isolados. A BIA **estima** composição a partir da impedância elétrica e de equações/modelos do fabricante; não mede massa muscular diretamente.

## Limitações conhecidas (E3; suporte na literatura de validade de BIA — fontes específicas devem ser verificadas antes de citar numericamente)
- **Estado de hidratação** altera a impedância: desidratação/retenção, sódio, carboidrato/glicogênio, ciclo menstrual, cafeína/álcool, sudorese.
- **Condições de medida**: jejum, bexiga, horário, temperatura, exercício prévio, posição, pele/eletrodos. Mudança de condição ≈ mudança "fisiológica" falsa.
- **Dispositivo/equação**: trocar de aparelho, modo (mono/multifrequência; 4/8 eletrodos) ou software quebra a série.
- **Erro individual**: o erro em nível individual costuma ser maior que em nível de grupo; diferenças de poucas décimas de kg ou de ~1 ponto percentual podem estar dentro do ruído.
- **Dados segmentares**: menos confiáveis que totais; a BIA tende a ser sensível à água regional; servem como sinal, não como prova de hipertrofia regional.
- **"Massa muscular" da BIA** ≠ hipertrofia medida por imagem (US/RM); pode refletir água.

## Processo de análise
1. **Inventariar a série**: datas, aparelho, condições, intervalo entre medidas (≥4 pontos ideal).
2. **Verificar comparabilidade**: mesma máquina/condições? Se não, reduzir confiança.
3. **Estimar o ruído**: se houver medidas repetidas no mesmo dia/semana, usar a dispersão; senão usar regra prática conservadora: **mudanças menores que ~1–1,5 kg de massa muscular/magra ou ~1–2 pp de gordura, sem triangulação, tratar como "indeterminado"** (*regra prática conservadora a calibrar pela série do usuário, não limiar publicado*).
4. **Triangular**: peso, circunferências, fotos, desempenho (cargas/reps), aparência, roupas, fase nutricional, hidratação conhecida.
5. **Conclusão graduada**: Mudança provável real / Indeterminada / Compatível com ruído-hidratação, com justificativa e confiança.
6. **Consequência no plano**: bioimpedância **não** deve mudar sozinha o plano; serve para confirmar/questionar hipóteses já sustentadas por desempenho e contexto.

## Indicadores a observar (se disponíveis)
Peso; massa magra/muscular esquelética; % gordura e massa de gordura; água corporal total, intra/extracelular (razão ECW/TBW como marcador de hidratação/inflamação); ângulo de fase (se disponível; interpretar com cautela); segmentar (braços, pernas, tronco).

## Padronização para o próximo ciclo (recomendação no Brief)
Mesmo aparelho, mesmo horário, jejum, hidratado de forma consistente, sem treino intenso 24 h antes, mesma roupa; medir no início e no fim do ciclo (e opcionalmente no meio); registrar condições.

## Alertas
- Em déficit calórico, massa magra "caindo" na BIA pode ser depleção de glicogênio/água; checar desempenho.
- Em superávit, água/glicogênio aumentam → superestimar ganho muscular.
- Nunca usar BIA como único argumento para aumentar/reduzir volume.

=== ARQUIVO: references/body-composition-goals.md ===

# Recomposição, redução de gordura e manutenção de massa

**Escopo**: a Skill define o papel do treino de força/condicionamento. Dieta (déficit, proteína, etc.) é **fora do escopo de prescrição**; sinalizar a dependência e, se a nutrição estiver sob o projeto ou profissional, consultar esse contexto.

## Princípios (síntese; muitos vêm de fisiologia consolidada E3 e de posicionamentos; evidência direta em treinados é menos robusta)
- **Em déficit calórico**, o treino de força serve sobretudo para **sinalizar retenção de massa magra**; manter **intensidade/carga** e reduzir volume se a recuperação piorar costuma ser a estratégia conservadora (E3/E6). Não "queimar" com volume extra de força.
- **Recomposição** (ganhar massa e perder gordura) é mais plausível em iniciantes, retreinamento, ou com gordura corporal relativamente alta; em treinados, tende a ser lenta e difícil de confirmar com bioimpedância (incerteza de medida > mudança esperada).
- **Manutenção**: massa mantida com volume reduzido se intensidade permanece alta e frequência mínima ≥1×/semana/músculo (E3/E6; evidência direta limitada). Útil como fase em ciclos de alta carga esportiva.
- **Cardio para gasto energético**: escolher modalidade de menor interferência com as pernas (ver `concurrent-training.md`); não deixar o cardio crescer a ponto de comprometer a musculação.

## Decisões para o Brief
1. Qual é o *verdadeiro* objetivo: peso, gordura, massa magra, perímetro (cintura), desempenho? Definir **indicadores** coerentes (não só peso).
2. Fase nutricional conhecida? (déficit/manutenção/superávit) → determina expectativas de progressão (em déficit, cargas podem estagnar sem ser falha do treino).
3. Volume: moderado; prioridade a exercícios de alta estabilidade e baixo custo sistêmico.
4. Progressão: usar **manutenção de carga/reps** como marcador de sucesso em déficit.
5. Monitorar sono, fome, humor, libido (se relatados) → sinais de déficit excessivo (interpretar, não diagnosticar).
6. Duração máxima de fases agressivas: definir ponto de decisão (pausa/manutenção).

## Armadilhas
- Interpretar queda de peso + "massa muscular" estável na bioimpedância como recomposição sem triangulação (ver `bioimpedance.md`).
- Aumentar volume de força para "compensar" cardio e déficit.
- Mudar vários fatores (dieta, cardio, treino) ao mesmo tempo e atribuir o resultado ao treino.

=== ARQUIVO: references/concurrent-training.md ===

# Treinamento concorrente e sistema completo de treino

O treino de musculação é analisado **dentro da semana total**: tênis, basquete, corrida, outros esportes, trabalho, sono.

## Evidência-chave
| Achado | Grau/fonte |
|---|---|
| Combinar endurance e força pode **reduzir** ganhos de força/potência vs só força (efeito mais claro em potência); fatores: modalidade (corrida pior que ciclismo), frequência e duração do endurance. | E1 · S-16 |
| **Hipertrofia de corpo inteiro/fibra** não aparece prejudicada pelo treino concorrente em meta-análise mais recente (com heterogeneidade). | E1 · S-17 |
| Mecanismos de interferência (sinalização molecular AMPK/mTOR; fadiga residual) são mais fortes em modelo de laboratório do que em resultado prático. | E3 |
| Ordem das modalidades e intervalo entre sessões: evidência mista; o **volume total e a fadiga residual** importam mais do que uma ordem mágica. | E1–E3 (conflitante) |

Conclusão prática (hipótese de trabalho, **E3/E4**): a interferência é tratável por **gestão de fadiga e distribuição**, não por evitar o esporte.

## Esportes (análise por demanda)
Para cada atividade, registrar: dias/horários, duração, intensidade percebida, membros/tecidos mais exigidos, impacto (saltos, mudanças de direção), sazonalidade (campeonatos).

| Atividade | Demandas típicas | Implicações |
|---|---|---|
| Tênis | Membros inferiores (deslocamento), tronco/rotação, ombro/cotovelo (saque/forehand), impacto | Poupar ombro/cotovelo (volume de empurrar/puxar vertical acima da cabeça) em véspera/dia de jogo; atenção a panturrilha/quadríceps |
| Basquete | Saltos, sprints, mudanças de direção, tornozelo/joelho | Cuidado com volume de pernas e excêntricos intensos pré-jogo; priorizar tornozelo/joelho/quadril em saúde articular |
| Corrida | Impacto, extensores do joelho/tornozelo, isquiotibiais | Maior interferência em pernas; espaçar de dias pesados de pernas |
| Ciclismo | Quadríceps/glúteo, baixa excentricidade | Menor interferência em hipertrofia que corrida (S-16) |
| Outros/rec. | Variável | Coletar dados |

## Regras de distribuição (princípios para o Brief)
1. **Espaçar** sessões de alta demanda sobre o mesmo tecido: separar dia de pernas pesado de jogo/corrida intensa em ≥24–48 h (**E6**, prática).
2. **Empilhar por hierarquia**: dias "duros" (pernas pesadas + esporte intenso) agrupados e dias "fáceis" protegidos *ou* distribuição homogênea — decidir com base na preferência/rotina. Evitar dias duros isolados demais que impeçam recuperação.
3. **Poupar tecidos**: pernas mais conservadoras (mais máquina, menos excêntrico extremo) em semanas de alto volume esportivo; upper body compensa se o objetivo é hipertrofia global.
4. **Cardio/esporte vs objetivo**: se objetivo primário é hipertrofia/força, limitar endurance a volume/frequência que não sacrifique sessões-chave.
5. **Sessão única combinada**: força antes do cardio quando a prioridade é força (E3; evidência mista).
6. **Sazonalidade**: em período competitivo esportivo, reduzir volume de academia (manutenção) e manter intensidade.
7. **Carga total**: somar esforço percebido semanal de todas as atividades (sRPE × min, se houver registro).

## Dados a coletar
Agenda semanal real; frequência por esporte; presença de jogos/torneios; dor/lesões recorrentes por articulação; desempenho esportivo percebido.

## Indicadores
Desempenho nas sessões de pernas após dias de esporte; RIR real; sono; dor articular; fadiga pré-jogo.

=== ARQUIVO: references/cycle-analysis.md ===

# Análise longitudinal do ciclo anterior (e dos anteriores)

Objetivo: transformar registros em **hipóteses causais cautelosas** (n=1, ruído alto). Sempre separar *Dado → Interpretação → Confiança*.

## 0. Higiene de dados
- Aderência: sessões feitas/planejadas; semanas interrompidas (viagem, doença, lesão).
- Qualidade de registro: há carga, reps e RIR/RPE por série? Faltou? → limitar conclusões.
- Mudanças simultâneas (dieta, sono, esporte, aparelho de BIA) que confundem.

## 1. Volume
- **Séries duras semanais por grupo muscular** (contar séries ≈≤3 RIR; contar contribuição indireta de compostos com critério: ex., 0,5 por músculo sinergista como convenção declarada).
- Evolução semana a semana; distribuição por sessão; proporção por prioridade.
- Relação volume × resposta: músculos com mais volume progrediram mais? Há sinais de excesso ou deficiência?

## 2. Intensidade
- Zonas de repetição usadas; carga/reps ao longo do ciclo; RIR/RPE reportado vs provável (RIR subestima/superestima; ver S-10, S-11).
- Proximidade da falha por exercício: onde houve falha e com que custo.

## 3. Frequência e distribuição
- Dias por músculo, espaçamento, sobreposição com esportes, sessões perdidas.

## 4. Exercícios
Por exercício-âncora: início → fim (carga × reps; e1RM estimado com cautela), tendência (↑/=/↓), estabilidade, dor, redundância. Classificar: **funcionou / neutro / problemático**.

## 5. Organização
Ordem dentro da sessão vs queda de desempenho em exercícios finais; divisão e espaçamento; interferência entre sessões.

## 6. Fadiga
Checklist de `fatigue-recovery.md`; procurar convergência de sinais e ligá-los a semanas e eventos.

## 7. Composição corporal
Conclusão de `bioimpedance.md` + triangulação.

## 8. Comparação entre ciclos
Tabela: ciclo × volume médio × intensidade × progressão × composição × fadiga × aderência. Buscar **padrões que se repetem** (ex.: pernas estagnam sempre que há corrida ≥2×/sem).

## 9. Síntese
- **O que funcionou** (manter) · **O que não funcionou** (alterar, com hipótese) · **Gargalos** · **Incertezas**.
- Transformar em **hipóteses testáveis para o próximo ciclo** (ex.: "reduzir séries de pernas 25% e tirar falha em agachamento deve restaurar progressão e reduzir dor").

## 10. Perguntas que geram pesquisa (etapa 7)
Listar as dúvidas (máx. 3–5) cuja resposta mudaria uma decisão; pesquisar só essas.

## Armadilhas
- Correlação = causa; regressão à média (semana excelente seguida de pior); viés de confirmação; ignorar mudanças simultâneas; subestimar efeito de sono/estresse.

=== ARQUIVO: references/endurance.md ===

# Resistência muscular, condicionamento e capacidades aeróbicas/anaeróbias

Dois domínios diferentes — **não confundir**:
1. **Resistência muscular localizada** (muitas repetições com carga moderada/baixa; relevância: esporte, saúde funcional).
2. **Condicionamento cardiorrespiratório / endurance** (corrida, ciclismo, intervalado). Em conjunto com musculação → ver `concurrent-training.md`.

## Resistência muscular localizada
- Adaptações ocorrem em ampla faixa de cargas; cargas leves levadas perto da falha elevam resistência local e podem gerar hipertrofia comparável (S-05, S-06, E1/E3). Especificidade continua válida: para tarefa com muitas repetições, treinar com repetições/densidade/descanso próximos da tarefa.
- Variáveis: repetições (≈15–30+), descanso curto (30–90 s), densidade (trabalho/tempo), circuitos; **fadiga metabólica alta** com tolerância individual variável.
- Progressão: reps → densidade (mesmo trabalho em menos tempo) → carga; evitar progredir as três ao mesmo tempo.
- Seleção: exercícios de baixa exigência técnica e de baixo risco sob fadiga (máquinas, halteres estáveis, padrões simples).

## Condicionamento (o que a Skill decide vs delega)
- **Decide** (princípios): papel do cardio no ciclo (manutenção, complemento, meta principal); frequência/dias permitidos; intensidade relativa (fácil/limiar/intervalado) **em termos de fadiga imposta à musculação**.
- **Delega**: prescrição específica de corrida/ciclismo, se o projeto tiver módulo próprio.
- Modelos usuais (E3/E5): distribuição polarizada/piramidal, zonas de FC/RPE; usar só se o projeto já adota.

## Periodização
Ondas de volume/densidade; semanas de descarga; fases de base → específica. Ver `periodization.md`.

## Indicadores
Reps/tempo em testes padronizados; tempo sob carga; percepção de esforço pós-sessão; recuperação entre séries; FC de recuperação (se o usuário monitora).

## Cuidados
Muito volume metabólico + déficit calórico + pouco sono → queda de desempenho/adesão. Declarar incerteza quando sem dados de recuperação.

=== ARQUIVO: references/evidence-hierarchy.md ===

# Hierarquia e graduação da evidência

## Níveis (do mais ao menos forte)

| Grau | Fonte |
|---|---|
| **E1** | Revisões sistemáticas e meta-análises/meta-regressões de boa qualidade |
| **E2** | Estudos experimentais relevantes (ECRs, estudos longitudinais de treinamento), sobretudo em população comparável |
| **E3** | Literatura científica consolidada (revisões narrativas de especialistas, fisiologia básica, modelos teóricos bem estabelecidos) |
| **E4** | Consensos e posicionamentos de organizações (ACSM, NSCA…), consensos Delphi |
| **E5** | Livros/tratados (valor alto como síntese e para fundamentos; não equivalem a estudo primário atualizado) |
| **E6** | Experiência de treinadores reconhecidos/prática de campo |
| **E7** | Opinião individual, conteúdo sem referência |

Ressalvas: livros e posicionamentos podem estar **defasados**; uma boa MA recente pode superar um posicionamento antigo. Fisiologia básica (E3) sustenta mecanismos, mas não prova que um método "funciona" melhor.

## Rótulos de consistência (usar no Brief)
- **Consistente** — múltiplas MAs/estudos concordam, populações relevantes.
- **Limitada** — poucos estudos, amostras pequenas, curta duração, população diferente.
- **Conflitante** — achados divergem (explicar por quê).
- **Prática sem forte evidência experimental** — uso comum, sustentada por mecanismo/experiência.

## Ao avaliar uma fonte, perguntar
1. Desenho e qualidade (risco de viés, equiparação de volume/carga, medida de desfecho: ultrassom/RM vs circunferência vs DXA vs bioimpedância).
2. **População**: treinados vs novatos; idade; sexo; saudáveis. Muitos estudos usam novatos e jovens, com duração de 8–12 semanas.
3. Magnitude do efeito e intervalo de confiança (não só p-valor).
4. Contexto: volume equiparado? proximidade da falha controlada?
5. **Aplicabilidade ao indivíduo** (nível, histórico, rotina, esportes, recuperação).
6. Conflitos de interesse/tipo de publicação (preprint = evidência preliminar).

## Comportamento em conflito
Declarar o conflito; indicar qual lado é mais crível e por quê; propor decisão **robusta** (funciona bem nos dois cenários) ou **experimentável** (testar no ciclo com indicador de acompanhamento).

## Distinções obrigatórias no Brief
Cada recomendação relevante recebe: `[E#] [consistência] [confiança individual: A/M/B]`.
Exemplo: *"Volume de 10–16 séries duras/semana por músculo prioritário [E1 · consistente com retornos decrescentes; S-01, S-02] · confiança individual: M (histórico do ciclo anterior mostra estagnação de quadríceps com 18 séries)."*

## Fontes não científicas
Permitidas só como conhecimento prático, nunca como base principal, e sempre rotuladas ("fonte prática: …, sem evidência experimental").

=== ARQUIVO: references/exercise-selection.md ===

# Seleção e substituição de exercícios (por critérios, não por lista)

A Skill define **critérios e características**; o módulo de montagem escolhe os exercícios concretos. Nomear exercícios só como exemplos não vinculantes.

## Critérios de avaliação de um exercício (por ciclo)
| Critério | Pergunta | Evidência de apoio |
|---|---|---|
| **Potencial de progressão** | A carga/reps sobem de forma mensurável e estável? | prática (E6) |
| **Estabilidade/repetibilidade** | O registro é confiável (mesma técnica, ROM, equipamento)? | prática |
| **Estímulo/fadiga** | Dá tensão ao músculo-alvo a custo sistêmico/articular aceitável? | E3/E6 |
| **Especificidade** | Serve ao objetivo (força em padrão X; hipertrofia de região Y)? | E3 |
| **Redundância/sobreposição** | Dois exercícios estimulam o mesmo músculo de modo quase idêntico, somando fadiga sem ganho? | E6 |
| **Cobertura regional** | Há estímulo a diferentes regiões/funções (p. ex., cabeças, comprimentos musculares)? | E3; evidência de hipertrofia regional é limitada/evolutiva |
| **Comprimento muscular** | Tensão em posições alongadas? (amplitude completa é em geral segura; parciais alongadas podem funcionar) | S-14, S-15 (E1–E2, limitada) |
| **Adequação ao indivíduo** | Antropometria, dor, equipamento, preferência, interferência com esporte | contexto |
| **Risco/custo de lesão** | Articulações/tendões já sobrecarregados por esporte? | E6 |

## Decisão: manter vs trocar
- **Manter** exercícios com progressão e boa tolerância (continuidade permite análise longitudinal).
- **Trocar** quando: (a) estagnação com causas checadas (ver `progression.md`), (b) dor/desconforto, (c) redundância identificada, (d) necessidade de novo estímulo regional, (e) adesão/preferência, (f) equipamento.
- **Adicionar** só se houver função clara e recuperação para absorver.
- **Remover** exercícios de alto custo e baixo retorno para o objetivo.
- Todo par manter/trocar precisa de 1 linha de motivo no Brief.

## Ordem e organização (princípios para o módulo de montagem)
- Prioridade: exercício mais importante para o objetivo primeiro na sessão (fadiga reduz desempenho nos posteriores) — E3/E6; ACSM sugere compostos antes de isoladores para força (S-21, E4).
- Para hipertrofia, a ordem importa menos que o volume total; alternar prioridade muscular entre sessões é opção.
- Separar sessões com mesma demanda em tecidos (ver `concurrent-training.md`).

## Tipos de exercício em termos de estímulo/fadiga (heurística)
- Compostos livres pesados: alto estímulo amplo, alta fadiga sistêmica/técnica.
- Máquinas/cabos: alta estabilidade, baixa fadiga sistêmica — bons para volume adicional e resistência.
- Isoladores: precisão regional, baixa fadiga sistêmica; progressão por reps/dupla.
- Unilaterais: corrigem assimetrias; custo de tempo.

## O que evitar
Trocar exercícios por "confusão muscular"; empilhar 4 exercícios quase iguais; incluir exercício só por popularidade; exercícios instáveis como base de hipertrofia/força.

=== ARQUIVO: references/fatigue-recovery.md ===

# Fadiga, recuperação e relação estímulo/fadiga

## Conceito central
Toda decisão pesa **estímulo produzido × fadiga gerada**. Fadiga tem componentes: local/muscular, articular/tendínea, neural, metabólica, sistêmica, psicológica; somam-se com esportes, trabalho, sono e déficit calórico. A fadiga é *ferramenta e custo*: algum acúmulo é esperado em blocos de acúmulo; o problema é acúmulo que reduz qualidade do treino.

## Relação estímulo/fadiga dos meios (E3/E6, salvo indicação)
| Meio | Estímulo | Fadiga | Comentário |
|---|---|---|---|
| Séries até a falha | ↑ pequeno (S-07, S-08) | ↑↑ | Falha tende a ter melhor custo-benefício em isoladores/máquinas que em compostos pesados |
| Mais séries | ↑ com retornos decrescentes (S-01, S-02) | ↑ linear | Volume só sobe com recuperação que sustente |
| Compostos axiais pesados | ↑ força; estímulo em múltiplos músculos | ↑↑ sistêmica/neural | Cuidado com sobreposição a esportes |
| Isoladores/máquinas estáveis | Estímulo local eficiente | ↓ sistêmica | Bom para volume extra |
| Excêntrico alto / alongamento intenso | Dano muscular ↑ (DOMS) | ↑ | Cuidado com esporte/2 dias seguintes |
| Descansos curtos | Não aumenta hipertrofia de forma consistente (S-12) | ↑ metabólica | Útil só por tempo/densidade |

## Sinais de fadiga (a procurar no histórico — indiretos)
1. **Desempenho**: queda de carga/reps em exercícios-âncora; aumento do esforço percebido para a mesma carga; RIR real menor que o planejado.
2. **Estagnação** prolongada (≥3–4 sem.) apesar de aderência.
3. **Recuperação**: dor muscular persistente >72 h, dores articulares/tendíneas, necessidade de saltar sessões.
4. **Subjetivos**: sono, humor, motivação, apetite; sensação de peso nas pernas (interferência esportiva).
5. **Comportamentais**: aderência caindo, sessões encurtadas, registros menos detalhados.
6. **Padrão temporal**: sinais surgem em semanas específicas (volume alto? jogo no dia anterior?).

**Interpretação**: um único indicador é fraco; buscar convergência de ≥2–3. Declarar confiança.

## Recuperação — determinantes
Sono, nutrição (calorias/proteína — fora do escopo de prescrição), estresse, idade, carga esportiva, intervalo entre sessões do mesmo músculo, idade de treino. Não recomendar suplementos/modalidades de recuperação sem evidência; se mencionados, rotular como E6.

## Ações em ordem de parcimônia
1. Reduzir fadiga *desnecessária* (séries redundantes, falha em compostos pesados, exercícios de alto custo e baixo retorno).
2. Redistribuir (frequência, espaçamento, dias em relação a esportes).
3. Reduzir volume/esforço (em músculos não prioritários primeiro).
4. Deload reativo.
5. Manutenção temporária ou pausa.
Nunca "mais volume para superar a estagnação" sem ter verificado 1–3.

## Quando sinalizar profissional
Dor aguda/irradiada, perda de força súbita, sintomas neurológicos, tontura, palpitações, sinais de restrição alimentar/sintomas persistentes de sobretreinamento → orientar avaliação profissional; manter postura conservadora no Brief.

=== ARQUIVO: references/goal-profiles.md ===

# Perfis de objetivo — a lógica de prescrição muda, não só as variáveis

Escolher o(s) perfil(is) na etapa 6. Em objetivos combinados, definir **hierarquia** (um primário, no máximo dois secundários) — capacidades competem por recuperação. Números são **faixas de partida** a calibrar pela resposta individual (ver `cycle-analysis.md`), não regras.

## Matriz de lógica

| Eixo | Hipertrofia | Força máxima | Resistência muscular | Recomposição / perda de gordura | Manutenção | Performance esportiva |
|---|---|---|---|---|---|---|
| **Pergunta central** | Quanto estímulo mecânico efetivo por músculo sem exceder recuperação? | Quanto *prática de alta qualidade* nos padrões-alvo com fadiga controlada? | Quanto trabalho tolerável/densidade por tempo? | Estímulo suficiente p/ reter/ganhar massa em déficit/neutro, sem comprometer recuperação | Menor dose eficaz p/ reter | O que o esporte exige e quando; força como suporte sem custar performance |
| **Variável-chave** | Séries duras semanais por músculo, proximidade da falha | Intensidade relativa, especificidade, qualidade de execução | Densidade, repetições, descanso curto | Intensidade mantida, volume moderado (ajustado ao déficit) | Intensidade mantida, volume reduzido | Calendário esportivo, transferência, fadiga residual |
| **Seleção de exercício** | Por músculo: tensão em comprimentos longos, estabilidade, baixo custo sistêmico | Padrões específicos (competição/tarefa) + acessórios para fraquezas | Exercícios toleráveis em altas repetições, baixa técnica-demanda | Base composta + isolados para prioridades | Poucos exercícios-âncora eficazes | Padrões de força/potência transferíveis; poupar tecidos do esporte |
| **Progressão** | Dupla progressão/reps→carga; séries quando recuperação permite | Carga/intensidade (RPE/%1RM), mini-blocos | Reps, densidade, redução do descanso | Manter carga/reps (marcador de retenção) | Manter carga | Seguir fases (base→pré→competitivo) |
| **Periodização** | Ondulação de volume/fase de acúmulo + deload; mudanças ↔ fadiga | Blocos/ondulatória com semana de realização | Progressão de densidade/volume em ondas | Fases de déficit com gestão de fadiga; pausas em manutenção | Raramente necessária | Ligada ao calendário competitivo |
| **Fadiga típica** | Volume acumulado/falha | Neural/articular (alta carga) | Metabólica, sistêmica | Somada ao déficit calórico | Baixa | Soma esporte + academia |

## Regras de decisão por perfil (resumo)
- **Hipertrofia / ganho de massa** → `hypertrophy.md`.
- **Força** → `strength.md` (especificidade, baixa-média repetição, descanso longo, RIR maior para manter qualidade).
- **Resistência muscular / condicionamento** → `endurance.md`.
- **Recomposição / redução de gordura / manutenção** → `body-composition-goals.md` (nutrição está *fora* do escopo de prescrição; sinalizar dependência e sugerir profissional).
- **Performance esportiva / preparação física / concorrente** → `concurrent-training.md` + perfil da capacidade alvo.
- **Combinações**: declarar trade-off (ex.: hipertrofia + esporte de impacto 3×/semana → volume de pernas menor e periodização que evite sobreposição). Não prometer tudo ao mesmo tempo para nível intermediário/avançado.

## Fatores de individualização que modulam qualquer perfil
Nível de treinamento (novato tolera/necessita menos volume e progride com quase qualquer coisa; avançado exige mais especificidade/gestão de fadiga) · idade/recuperação · sono/estresse · histórico de lesões · preferências e aderência (o melhor programa é o executável) · disponibilidade de equipamento/tempo · resposta observada nos ciclos.

## Anti-padrões transversais
- Trocar de perfil a cada ciclo sem ter esgotado o ganho do anterior.
- Misturar metas concorrentes sem hierarquia.
- Usar "hipertrofia" como lógica de fundo para todas as metas (p. ex., aplicar volume alto a objetivo de força).

=== ARQUIVO: references/hypertrophy.md ===

# Hipertrofia e ganho de massa muscular

Status da evidência: bem estudado; achados quantitativos são médias de meta-análises, com grande heterogeneidade e predominância de desfechos medidos por métodos imprecisos. Usar como **faixas**, calibrando pela resposta individual.

## Princípios com suporte
| Tema | Síntese cautelosa | Grau / fonte |
|---|---|---|
| **Volume** | Mais séries semanais por músculo associam-se a maior hipertrofia, com **retornos decrescentes**; o efeito é claro até faixas moderadas-altas, com incerteza acima delas e forte variabilidade individual. Volume ótimo depende de nível, proximidade da falha e recuperação. | E1 · S-01, S-02 |
| **Frequência** | Com volume semanal equiparado, frequência tem efeito pequeno/incerto; funciona principalmente como **ferramenta de distribuição de volume** e de qualidade das séries. | E1 · S-03, S-04, S-02 |
| **Carga/repetições** | Hipertrofia similar numa ampla faixa de cargas se as séries são levadas próximo da falha; carga alta favorece força. Faixas leves (≈≥30 reps) são viáveis mas custam desconforto/tempo. | E1 · S-05, S-06 |
| **Proximidade da falha** | Benefício cresce à medida que as séries se aproximam da falha, com retornos decrescentes; o efeito de chegar exatamente à falha (vs. 1–3 RIR) é pequeno e incerto, e a falha aumenta a fadiga. | E1–E2 · S-07, S-08, S-09 |
| **Descanso entre séries** | Descansos >60 s parecem dar pequena vantagem; em exercícios compostos pesados, 2–3+ min tendem a preservar desempenho. | E1 · S-12, S-13 |
| **Amplitude de movimento** | Amplitude completa geralmente ≥ parcial; parciais em **comprimentos longos** podem ser eficazes; evidência em evolução. | E1–E2 · S-14, S-15 |
| **Progressão** | Sobrecarga progressiva necessária; pode ser por carga **ou** repetições. | ver `progression.md` |
| **Seleção** | Variedade *com critério* (regiões/cabeças musculares, comprimento muscular, estabilidade). | E3 · `exercise-selection.md` |

## Raciocínio de decisão (aplicar ao indivíduo)
1. **Volume atual × resposta**: ciclo anterior com volume X produziu progressão de carga e/ou sinais de crescimento (circunferência/bioimpedância segmentar/fotos)? Se sim e recuperação boa → manter ou subir conservadoramente (+10–20% nos músculos-prioridade). Se estagnou com fadiga alta → não subir; testar reduzir redundância/falha ou redistribuir frequência. Se estagnou *sem* fadiga → aumentar estímulo efetivo (séries duras, proximidade da falha, exercício melhor) antes de trocar tudo.
2. **Distribuição por prioridade**: prioridades recebem volume maior; não-prioridades em manutenção/mínimo eficaz.
3. **Qualidade da série**: contar séries "duras" (≈0–3 RIR). "Séries de aquecimento" e muito distantes da falha contam pouco ou nada.
4. **Limite por sessão**: muito volume por músculo/sessão pode ter utilidade marginal decrescente (evidência de meta-regressões recentes, em evolução — ATUALIZAR) → distribuir em ≥2 sessões/semana quando o volume semanal for alto.
5. **Estímulo/fadiga dos exercícios**: preferir exercícios que permitem progressão estável e dão tensão ao músculo-alvo sem fadiga sistêmica/articular desproporcional (p. ex., máquinas/cabos para volume extra em pernas, quando o esporte já cobra recuperação).
6. **Déficit/superávit calórico**: modula a capacidade de recuperação e de ganho (fora do escopo de prescrição; sinalizar).

## Faixas de partida (ajustáveis; NÃO são regras)
- Músculo-prioridade, intermediário: ~10–20 séries duras/semana, em ≥2 sessões.
- Músculo em manutenção: ~4–8 séries duras/semana.
- Repetições: predominantemente 5–30 com proximidade da falha adequada; concentrar 6–15 em compostos e 10–30 em isolados/máquinas é prática comum (**E6**, não recomendação experimental).
- RIR: maioria das séries em 1–3; séries finais de isoladores de baixo custo em 0–1.
- Descanso: 2–3 min compostos; 1–2 min isoladores.

## Sinais para aumentar/manter/reduzir volume
- **Aumentar**: progressão estável, recuperação completa entre sessões, RIR reportado alto demais, ganho ainda desejado na região.
- **Manter**: progressão estável e sem fadiga acumulada.
- **Reduzir/deload**: queda de desempenho em 2+ sessões, RIR piorando sem mudança de carga, dor articular, sono/motivação piorando.

## Advertências
- Dados de bioimpedância de "massa muscular" ≠ hipertrofia medida; ver `bioimpedance.md`.
- Não converter média de meta-análise em "dose ótima" individual.

=== ARQUIVO: references/periodization.md ===

# Periodização

**Síntese honesta**: periodização como princípio de organização (variar estímulo e fadiga de forma planejada) é amplamente aceita (B-03, B-04, S-21), e meta-análise aponta vantagem modesta para força com confundidores metodológicos (S-18, E1 limitada). Para hipertrofia, não há evidência robusta de que um modelo específico supere outro quando volume e proximidade da falha são equiparados (E3). **Logo: usar periodização para gerenciar progressão e fadiga, não como fim.**

## Modelos
| Modelo | Estrutura | Quando faz sentido | Risco |
|---|---|---|---|
| **Linear** | Intensidade ↑ e volume ↓ ao longo do ciclo | Preparação para pico de força; novatos/intermediários | Perda de especificidade inicial; rígido |
| **Ondulatória (diária/semanal)** | Varia reps/intensidade entre sessões ou semanas | Treinados, frequência ≥2×/músculo, rotina variável | Complexidade desnecessária |
| **Blocos (acúmulo → transmutação → realização)** | Foco concentrado por capacidade | Atletas com calendário e cargas altas | Exige fases bem delimitadas (B-05) |
| **Ondas de volume (mesociclo de acúmulo)** | Volume sobe gradualmente; deload | Hipertrofia de 6–10 semanas | Excesso sem monitoramento |
| **Manutenção** | Volume mínimo eficaz | Fases com alta carga esportiva/estresse/déficit | — |
| **Não periodizado (progressão contínua)** | Dupla progressão contínua | Maioria de intermediários com boa resposta | Estagnação tardia |

## Seleção
1. **Objetivo e tempo**: há data-alvo? → linear/blocos; sem data → ondas/ondulatória suaves.
2. **Nível**: novato → quase qualquer modelo simples; avançado → mais atenção a fadiga/especificidade.
3. **Esportes/calendário**: alinhar picos de carga da academia a semanas de menor demanda esportiva.
4. **Histórico**: manter modelo que funcionou; mudar só com razão.
5. **Complexidade**: escolher o modelo **mais simples** que atenda a progressão e ao controle de fadiga.

## Ciclo de ~8 semanas — esquemas genéricos (ilustrativos, não vinculantes)
- **A**: 3 sem. de aumento de volume + 1 semana de consolidação → 3 sem. de aumento de intensidade/RIR menor + deload (ou semana reduzida).
- **B**: 6–7 sem. de dupla progressão contínua + 1 sem. de deload no fim.
- **C (muito esporte)**: 2 sem. de volume padrão → 1 sem. reduzida (em torno de jogos/treinos) → repetir.
Escolher e justificar no Brief; o módulo de montagem detalha.

## Deload
- **Definição (consenso)**: período de estresse de treino reduzido para mitigar fadiga e melhorar prontidão para o treino seguinte (S-19, E4 — Delphi; **não há ensaio controlado robusto** que prove eficácia vs continuar).
- **Práticas relatadas** (S-20, E6/survey): duração ~1 semana (5–7 dias), a cada ~4–6 semanas; mantém frequência, reduz volume e/ou esforço (mais RIR).
- **Decidir**: *planejado* (fim do ciclo/ondas) vs *reativo* (por gatilho: queda de desempenho 2+ sessões, dor, sono ruim). Em ciclo curto e rotina com muito esporte, preferir **reativo + planejado leve no fim**.
- **Como**: reduzir volume ≈30–50% e/ou esforço (RIR +2–3), mantendo intensidade relativa em parte; nada de "semana de descanso total" a menos que haja indicação.

## Variação de exercícios (regra)
Só trocar exercício por: estagnação com causa não resolvida, dor/desconforto, saturação/adesão, necessidade de novo estímulo regional, equipamento. Manter exercícios-âncora entre ciclos para permitir análise longitudinal.

=== ARQUIVO: references/progression.md ===

# Modelos de progressão

Sobrecarga progressiva = aumentar gradualmente a demanda **efetiva** sobre o sistema. Pode ser por carga, repetições, séries, densidade, amplitude, controle técnico, ou proximidade da falha. Há evidência (E2) de que progredir por repetições ou por carga pode dar adaptações semelhantes em certas condições (estudo: "Progressive overload without progressing load? ..." — PMID 36199287; título localizado na busca, **autores/detalhes a verificar antes de citar**).

## Catálogo
| Modelo | Como funciona | Quando usar | Cuidado |
|---|---|---|---|
| **Progressão de carga linear** | +carga a cada sessão/semana | Novatos; exercícios compostos simples | Esgota-se rápido |
| **Dupla progressão** | Faixa de reps (ex.: 8–12); ao atingir teto em todas as séries (com RIR-alvo) → sobe carga e volta ao piso da faixa | Maioria dos exercícios de hipertrofia/máquinas/isoladores | Faixa estreita demais; ignorar RIR |
| **Progressão de repetições** | Mais reps com mesma carga ao longo das semanas | Isoladores, resistência, fases de alta repetição | Incremento de carga mínimo limitado (pesos discretos) |
| **Progressão de séries** | +1 série (ex.: por semana) em onda, com deload | Hipertrofia em mesociclo de acúmulo | Fadiga acumulada |
| **RIR/RPE-autorregulada** | Carga ajustada para atingir RIR-alvo | Força; quando a recuperação varia; treinados | RIR impreciso longe da falha (S-11); treinar a estimativa |
| **%1RM / carga relativa** | Cargas por % de 1RM estimado/testado | Força, prescrição em equipes | 1RM muda entre dias; estimativas erram |
| **Progressão por velocidade** | Carga ajustada a perda de velocidade | Só se houver sensor | Requer equipamento |
| **Progressão de densidade** | Mesmo trabalho em menos tempo | Resistência | Técnica degradada |
| **Progressão de amplitude/técnica** | Mais ROM, controle, pausa | Quando a carga trava, mas técnica permite ganho | Não "progredir" com técnica pior |

## Regras de decisão
1. **Escolha por exercício**, não por ciclo inteiro: compostos pesados (carga/RPE), máquinas/isoladores (dupla progressão), resistência (densidade).
2. **Critério de progredir**: todas as séries no teto da faixa dentro do RIR-alvo → subir. Regra objetiva no Brief.
3. **Critério de segurar**: dentro da faixa, com RIR ok → manter.
4. **Critério de recuar**: queda de desempenho por 2 sessões ou RIR muito menor que o planejado → reduzir carga/volume 5–10% ou deload antecipado.
5. **Estagnação** (≥3–4 semanas sem progresso num exercício-âncora): checar (a) RIR real, (b) recuperação/sono/calorias, (c) variação de técnica, (d) fadiga acumulada; só então trocar exercício/método — e registrar a razão.
6. **Incrementos realistas**: para treinados, progressão de 1–2 reps/ciclo e cargas pequenas é normal; "progresso a cada sessão" não é expectativa após o período de novato.
7. Progredir **uma variável principal por vez** por exercício.

## Ligação com periodização
A progressão ocorre **dentro** do modelo periodizado (`periodization.md`): semana a semana, o modelo define o que sobe (volume, carga, RIR).

=== ARQUIVO: references/project-integration.md ===

# Integração com o projeto de planejamento

## Situação de partida (registrada em 2026-09-30)
O repositório onde esta Skill foi criada (`bernardobc0792/Claude-Code`) contém o projeto de marca/Instagram do Dr. Bernardo Corrêa — **não contém** o sistema de planejamento de musculação. O usuário informou que esse sistema é um **Project do claude.ai**. Portanto a arquitetura real (onde ficam dados pessoais, bioimpedância, ciclos, geração de treino) **não foi inspecionada**; esta Skill foi feita como **pacote autônomo e agnóstico de estrutura**, sem alterar nenhum arquivo existente.

## Contrato (o que a Skill assume)
**Entradas (consultadas no projeto, nunca copiadas para a Skill):**
| Dado | Uso | Se ausente |
|---|---|---|
| Perfil: idade, sexo, nível de treinamento, histórico, lesões/restrições, preferências | Individualização | Perguntar/listar em "dados a coletar" |
| Objetivo vigente e do próximo ciclo | Escolha de perfil | Pedir definição |
| Rotina semanal e esportes | Distribuição, interferência | Coletar agenda |
| Bioimpedância (série com datas/condições) | `bioimpedance.md` | Basear-se em desempenho; baixa confiança |
| Ciclos anteriores (estrutura e registros de carga/reps/RIR) | `cycle-analysis.md` | Limitar análise |
| Como o sistema gera treinos (formato esperado) | Adequar o Brief ao consumo | Usar template padrão |

**Saída:** Training Cycle Brief (`templates/training-cycle-brief.md`). Formato: Markdown, seções A–K fixas, para leitura por humano e pelo módulo de montagem.

## Como acoplar ao Project do claude.ai (opções)
1. **Skills (recomendado)**: empacotar a pasta `training-science/` como Skill e habilitá-la na conta/projeto (Settings → Capabilities → Skills / upload de ZIP com `SKILL.md` na raiz da pasta).
2. **Arquivos de conhecimento do Project**: anexar `SKILL.md` + `references/` + `templates/` e adicionar às instruções do Project a regra de ativação (abaixo).
3. **Repositório**: se o sistema migrar para um repo, manter a pasta como está (o `SKILL.md` descreve o uso).

## Trecho sugerido para as instruções do Project (ativação)
```
Ao terminar um ciclo de treino (≈8 semanas) e antes de montar o próximo:
1) Acione a skill training-science com o contexto do projeto (perfil, bioimpedância, ciclos, treinos, esportes, objetivo do próximo ciclo).
2) Receba o TRAINING CYCLE BRIEF.
3) Monte o novo ciclo respeitando os princípios e restrições do Brief. Se divergir de algum ponto, registre a razão na seção H do Brief.
4) Ao fim do novo ciclo, envie os dados para a próxima análise.
A skill não participa da rotina diária e não monta a ficha.
```

## Alterações necessárias no sistema existente (a confirmar quando a arquitetura for vista)
Nenhuma imposta. Recomendado (opcional): (a) guardar cada Brief junto ao ciclo correspondente para alimentar a análise seguinte; (b) padronizar registro de RIR/RPE e das condições da bioimpedância (a Skill aponta lacunas no Brief).

## Conflitos de responsabilidade
- Dados: fonte única = projeto. A Skill não guarda perfil nem histórico.
- Treino: fonte única = módulo de montagem. A Skill só define princípios/restrições.
- Conhecimento: fonte única = `references/` da Skill. Se o projeto tiver lógica de treinamento própria, o Brief deve apontar divergências (seção H) em vez de sobrescrevê-la.

=== ARQUIVO: references/sources-registry.md ===

# Registro de fontes (sources-registry)

Único lugar de onde a Skill pode citar sem nova verificação. Regra: **nenhuma fonte entra aqui sem verificação** (título, autores, ano e periódico/ID confirmados em PubMed/editora). Status:

- `VERIFICADA` — localizada e confirmada em base indexada (data da verificação na coluna).
- `LIVRO` — obra de referência amplamente reconhecida; autor/título/edição conferidos por conhecimento, **sem verificação de página**. Citar por título/capítulo, nunca por página/número inventado.
- `ATUALIZAR` — tópico em movimento; buscar versão mais recente antes de usar.

Verificações desta tabela: 2026-09-30 (busca em PubMed/Springer). Descrições dos achados são **resumos cautelosos**; para números exatos, abrir a fonte.

## Artigos e revisões

| ID | Referência | Identificador | Tipo / Grau | Uso | Status |
|---|---|---|---|---|---|
| S-01 | Schoenfeld BJ, Ogborn D, Krieger JW. Dose-response relationship between weekly resistance training volume and increases in muscle mass: a systematic review and meta-analysis. J Sports Sci. 2017;35(11):1073-82. | PMID 27433992 | RS+MA / E1 | Volume × hipertrofia | VERIFICADA |
| S-02 | Pelland JC, Remmert JF, Robinson ZP, Hinson SR, Zourdos MC. The Resistance Training Dose-Response: Meta-Regressions Exploring the Effects of Weekly Volume and Frequency on Muscle Hypertrophy and Strength Gain. Sports Med (publicação 2025; versão SportRxiv 2024). | PMID 41343037; doi 10.1007/s40279-025-02344-w | MA/meta-regressão / E1 | Retornos decrescentes volume; frequência | VERIFICADA (conferir volume/páginas) · ATUALIZAR |
| S-03 | Schoenfeld BJ, Ogborn D, Krieger JW. Effects of resistance training frequency on measures of muscle hypertrophy: a systematic review and meta-analysis. Sports Med. 2016;46(11). | PMID 27102172 | RS+MA / E1 | Frequência | VERIFICADA |
| S-04 | Schoenfeld BJ, Grgic J, Krieger J. How many times per week should a muscle be trained to maximize muscle hypertrophy? A systematic review and meta-analysis of studies examining the effects of resistance training frequency. J Sports Sci. 2019. | PMID 30558493 | RS+MA / E1 | Frequência com volume equiparado | VERIFICADA |
| S-05 | Schoenfeld BJ, Grgic J, Ogborn D, Krieger JW. Strength and hypertrophy adaptations between low- vs. high-load resistance training: a systematic review and meta-analysis. J Strength Cond Res. 2017;31(12):3508-23. | PMID 28834797 | RS+MA / E1 | Carga × hipertrofia/força | VERIFICADA |
| S-06 | Schoenfeld BJ, Grgic J, Van Every DW, Plotkin DL. Loading recommendations for muscle strength, hypertrophy, and local endurance: a re-examination of the repetition continuum. Sports (Basel). 2021;9(2):32. | PMID 33671664 | Revisão narrativa / E3 | Continuum de repetições | VERIFICADA |
| S-07 | Refalo MC, Helms ER, Trexler ET, Hamilton DL, Fyfe JJ. Influence of resistance training proximity-to-failure on skeletal muscle hypertrophy: a systematic review with meta-analysis. Sports Med. 2023;53(3):649-65. | PMID 36334240 | RS+MA / E1 | Proximidade da falha | VERIFICADA |
| S-08 | Robinson ZP, Pelland JC, Remmert JF, Refalo MC, Jukic I, Steele J, Zourdos MC. Exploring the dose-response relationship between estimated resistance training proximity to failure, strength gain, and muscle hypertrophy: a series of meta-regressions. Sports Med. 2024;54(9):2209-31. | doi 10.1007/s40279-024-02069-2 | Meta-regressão / E1-E2 | Proximidade da falha (dose-resposta) | VERIFICADA · ATUALIZAR |
| S-09 | Vieira AF, et al. Effects of resistance training performed to repetition failure or non-failure on muscular strength and hypertrophy: a systematic review and meta-analysis. J Sport Health Sci. 2021. | PMID 33497853 | RS+MA / E1 | Falha × não-falha | VERIFICADA (conferir lista de autores ao citar) |
| S-10 | Zourdos MC, Klemp A, Dolan C, et al. Novel resistance training-specific rating of perceived exertion scale measuring repetitions in reserve. J Strength Cond Res. 2016. | PMID 26049792 | Estudo observacional/validação / E2 | Escala RPE-RIR | VERIFICADA |
| S-11 | Steele J, et al. Ability to predict repetitions to momentary failure is not perfectly accurate, though improves with resistance training experience. PeerJ. 2017. | PMID 29204323 | Estudo experimental / E2 | Precisão do RIR | VERIFICADA (título/PMID; conferir autores) |
| S-12 | Singer et al. Give it a rest: a systematic review with Bayesian meta-analysis on the effect of inter-set rest interval duration on muscle hypertrophy. Front Sports Act Living. 2024. | PMID 39205815 | RS+MA / E1 | Descanso entre séries | VERIFICADA (conferir autores/periódico ao citar) |
| S-13 | Schoenfeld BJ, et al. Longer interset rest periods enhance muscle strength and hypertrophy in resistance-trained men. J Strength Cond Res. 2016. | PMID 26605807 | ECR / E2 | Descanso em treinados | VERIFICADA |
| S-14 | Schoenfeld BJ, Grgic J. Effects of range of motion on muscle development during resistance training interventions: a systematic review. SAGE Open Med. 2020. | PMID 32030125 | RS / E1-E2 | Amplitude de movimento | VERIFICADA |
| S-15 | Wolf M, Androulakis-Korakakis P, Schoenfeld BJ, et al. Lengthened partial repetitions elicit similar muscular adaptations as full range of motion repetitions in trained individuals. 2025. | PMID 39959841 | ECR pequeno / E2 (baixa certeza) | ROM parcial alongada | VERIFICADA (conferir periódico) |
| S-16 | Wilson JM, Marin PJ, Rhea MR, Wilson SMC, Loenneke JP, Anderson JC. Concurrent training: a meta-analysis examining interference of aerobic and resistance exercises. J Strength Cond Res. 2012. | PMID 22002517 | RS+MA / E1 | Interferência; corrida > ciclismo; duração/frequência | VERIFICADA |
| S-17 | Lundberg TR, Feuerbacher JF, Sünkeler M, Schumann M. The effects of concurrent aerobic and strength training on muscle fiber hypertrophy: a systematic review and meta-analysis. Sports Med. 2022. | PMID 35476184 | RS+MA / E1 | Hipertrofia sob treino concorrente | VERIFICADA |
| S-18 | Williams TD, Tolusso DV, Fedewa MV, Esco MR. Comparison of periodized and non-periodized resistance training on maximal strength: a meta-analysis. Sports Med. 2017;47(10):2083-2100. | PMID 28497285 | RS+MA / E1 (confundimentos) | Periodização × força | VERIFICADA |
| S-19 | Bell L, Nolan D, Immonen V, et al. Integrating deloading into strength and physique sports training programmes: an international Delphi consensus approach. Sports Med Open. 2023 (conferir lista de autores ao citar). | PMC10511399 | Consenso Delphi / E4 | Definição e desenho de deload | VERIFICADA |
| S-20 | Rogerson D, Nolan D, Bell L, et al. Deloading practices in strength and physique sports: a cross-sectional survey. Sports Med Open. 2024. | PMID 38499934 | Survey / E5 (prática) | Práticas de deload | VERIFICADA |
| S-21 | ACSM position stand. Progression models in resistance training for healthy adults. Med Sci Sports Exerc. 2009;41(3):687-708. | PMID 19204579; doi 10.1249/MSS.0b013e3181915670 | Posicionamento / E4 | Progressão, periodização ampla | VERIFICADA · ATUALIZAR (há documentos mais recentes) |
| S-22 | Currier BS, et al. Resistance training prescription for muscle strength and hypertrophy in healthy adults: a systematic review and Bayesian network meta-analysis. Br J Sports Med. 2023. | (PMID a verificar) | NMA / E1 | Prescrição comparativa | **NÃO VERIFICADA** — só apareceu como menção em resultado de busca; abrir a fonte antes de citar |

## Livros e tratados (LIVRO — citar por título/capítulo, sem páginas)

| ID | Obra | Uso |
|---|---|---|
| B-01 | Schoenfeld BJ. *Science and Development of Muscle Hypertrophy* (Human Kinetics; edição atual a conferir). | Hipertrofia |
| B-02 | Zatsiorsky VM, Kraemer WJ, Fry AC. *Science and Practice of Strength Training* (Human Kinetics; 3ª ed.). | Força, fadiga/adaptação |
| B-03 | Haff GG, Triplett NT (eds.). *Essentials of Strength Training and Conditioning* (NSCA/Human Kinetics; 4ª ed.). | Prescrição, periodização geral |
| B-04 | Bompa TO, Haff GG. *Periodization: Theory and Methodology of Training* (Human Kinetics; 5ª ed.). | Periodização |
| B-05 | Issurin VB. Block periodization (artigo de revisão em Sports Med 2010; conferir citação antes de usar) / livro *Block Periodization*. | Blocos |
| B-06 | Stone MH, Stone M, Sands WA. *Principles and Practice of Resistance Training* (Human Kinetics). | Base fisiológica, SAID/fadiga |
| B-07 | Kraemer WJ, Fleck SJ. *Optimizing Strength Training* / Fleck & Kraemer *Designing Resistance Training Programs* (Human Kinetics); tradução: *Fundamentos do treinamento de força muscular* (Artmed). | Desenho de programas |
| B-08 | McArdle WD, Katch FI, Katch VL. *Fisiologia do Exercício: Nutrição, Energia e Desempenho Humano* (Guanabara Koogan). | Fisiologia do exercício |
| B-09 | Powers SK, Howley ET. *Fisiologia do Exercício: Teoria e Aplicação ao Condicionamento e ao Desempenho* (Manole). | Fisiologia do exercício |
| B-10 | Prestes J, Foschini D, Marchetti P, Charro M, Tibana R (orgs.). *Prescrição e Periodização do Treinamento de Força em Academias* (Manole). | Literatura brasileira, prescrição |
| B-11 | Nordin M, Frankel VH. *Basic Biomechanics of the Musculoskeletal System* (Wolters Kluwer). | Biomecânica |
| B-12 | Helms E, Valdez A, Morgan A. *The Muscle and Strength Pyramid: Training* (autopublicado). | Prática baseada em evidência — **E5/E4, não E1** |

## Procedimento de adição
Ver `update-protocol.md`. Uma linha nova só é válida com: título completo, primeiro autor + ano, periódico, ID (PMID/DOI), grau, data da verificação.

=== ARQUIVO: references/strength.md ===

# Força máxima

Base: especificidade (SAID) + intensidade relativa + prática técnica + fadiga controlada. Muitos princípios vêm de tratados (B-02, B-04, B-06) e de posicionamentos (S-21); a evidência experimental em treinados é mais limitada que em hipertrofia.

## Princípios
| Tema | Síntese | Grau |
|---|---|---|
| **Intensidade** | Cargas altas (≥~80% 1RM; 1–6 reps) favorecem ganhos de força vs cargas leves, embora estas também aumentem força em iniciantes. | E1 · S-05 |
| **Especificidade** | Força aprende-se no padrão motor/ângulo/carga praticados; força em um exercício transfere parcialmente a outros. | E3 · B-02, B-06 |
| **Volume** | Retornos decrescentes para força são **mais acentuados** que para hipertrofia: volume moderado e intensidade alta tendem a ser eficientes. | E1 · S-02 |
| **Frequência do padrão** | Praticar o padrão ≥2×/semana é comum e útil pela prática técnica; efeito separado do volume é pequeno. | E1–E3 · S-02 |
| **Proximidade da falha** | Para força, não é necessário chegar à falha; manter qualidade e RIR ≥1–3 em séries pesadas costuma otimizar estímulo/fadiga. | E1–E2 · S-08 |
| **Descanso** | Longos (3–5 min) em séries pesadas para preservar intensidade/qualidade. | E2/E3 · S-13 (hipertrofia) + B-02 |
| **Periodização** | Periodização (linear/ondulatória/blocos) tende a ser ≥ não periodizada para força, com confundidores (volume/carga nem sempre equiparados); diferenças entre modelos são pequenas/incertas. | E1 (limitada) · S-18 |

## Decisões para o Brief (por capacidade)
1. **Definir o alvo**: 1RM em quais padrões? Quando será testado/realizado (data)? Se sem data, tratar como "ganho de força geral" com pico opcional ao fim.
2. **Especificidade**: listar padrões-alvo; acessórios só com função clara (fraqueza, hipertrofia de suporte, saúde articular).
3. **Zonas de intensidade**: distribuir entre pesado (≈1–5 reps), moderado (≈5–8) e volume de apoio; evitar "tudo pesado o tempo todo".
4. **Fadiga**: alta carga = fadiga neural/articular/tendínea; espaçar sessões pesadas do mesmo padrão; semanas de alívio/realização.
5. **Progressão**: carga/intensidade com RPE-RIR ou %; progressão por ondas; critérios de recuo.
6. **Preparação para teste**: redução de volume (taper) e manutenção de intensidade, se houver evento.

## Sinais
- Progresso de força sem ganho de massa ≠ problema. Ganho de massa sem força no padrão → revisar especificidade.
- Quedas de velocidade/carga com mesma percepção de esforço → fadiga acumulada.

## Cuidados
Se dor articular/tendínea persistente: reduzir intensidade/modificar exercício e recomendar avaliação profissional (não diagnosticar).

=== ARQUIVO: references/update-protocol.md ===

# Protocolo de atualização da Skill

A ciência do treinamento evolui (p. ex., dose-resposta de volume/frequência e de proximidade da falha tiveram meta-regressões novas em 2024–2025). A Skill é atualizada de forma **controlada e rastreável**.

## Gatilhos
- Rotina: revisão a cada **6 meses** dos itens marcados `ATUALIZAR` no registro.
- Durante um Brief: dúvida importante não coberta, ou fonte citada com >3 anos sem checagem de revisões posteriores.
- Nova meta-análise/consenso relevante conhecida pelo usuário.

## Passos
1. **Buscar** (PubMed/Springer/periódicos; termos MeSH + "systematic review"/"meta-analysis"; filtrar últimos 3–5 anos).
2. **Verificar a fonte**: abrir a página, confirmar título completo, autores, ano, periódico, ID (PMID/DOI). Se só houver menção em agregador/blog → **não incluir**; buscar a primária.
3. **Graduar** (`evidence-hierarchy.md`): tipo de estudo, população, qualidade, magnitude.
4. **Registrar** no `sources-registry.md`: novo `S-xx` (IDs nunca reutilizados; fontes substituídas ficam marcadas `SUBSTITUÍDA por S-yy`), com data de verificação.
5. **Atualizar os arquivos de referência** afetados: alterar o texto **e** citar o ID; se o achado contradiz o texto anterior, registrar a mudança em `CHANGELOG` abaixo e ajustar o grau/consistência.
6. **Revisar impactos** em `goal-profiles.md`, faixas de partida e em `SKILL.md` se a regra fundamental mudar.
7. **Teste de consistência**: pegar um Brief anterior e checar se alguma recomendação ficaria diferente; anotar.

## Regras
- Nenhuma afirmação quantitativa nova sem fonte verificada.
- Preprints só como "preliminar (E2-)" e marcados `ATUALIZAR`.
- Mudanças de grande impacto → versão maior da Skill.
- Preservar histórico: não apagar fontes antigas; marcar substituição.

## Versão e changelog
| Versão | Data | Mudança |
|---|---|---|
| 0.1.0 | 2026-09-30 | Criação: arquitetura modular, registro com 21 fontes verificadas (S-22 pendente), 12 livros (LIVRO). |

## Melhorias previstas (quando a arquitetura do projeto estiver visível)
Mapeamento exato de campos/arquivos em `project-integration.md`; formato de ingestão dos registros de treino; histórico de Briefs.

=== ARQUIVO: templates/data-request-checklist.md ===

# Checklist de dados para a análise de transição

Preencher a partir do **contexto existente do projeto**. Só pedir ao usuário o que não existir. Marcar ✔ disponível / ✖ ausente / ? ambíguo.

## Perfil
- [ ] Idade, sexo, altura; tempo de treino e nível; lesões/restrições; preferências e exercícios que não tolera

## Objetivo
- [ ] Objetivo primário e secundários do próximo ciclo; prazo/evento; o que é inegociável

## Rotina e esportes
- [ ] Dias/horários de treino possíveis; tempo por sessão
- [ ] Esportes: quais, quando, duração, intensidade, próximos jogos/torneios
- [ ] Sono, estresse, trabalho (qualitativo)
- [ ] Fase nutricional (déficit/manutenção/superávit) — se informado

## Bioimpedância
- [ ] Série de medidas com datas, aparelho e condições (jejum, hidratação, horário)
- [ ] Peso, massa magra/muscular, % gordura, massa de gordura, água, segmentar

## Ciclos e treinos
- [ ] Estrutura dos últimos ciclos (divisão, frequência, exercícios)
- [ ] Registros: carga × reps × RIR/RPE por série
- [ ] Aderência; semanas perdidas; lesões/dores
- [ ] Feedback subjetivo (o que gostou/não gostou)

## Saída desta checklist
Lista "Dados ausentes/ambíguos" → vai na seção 0 do Brief, com impacto na confiança.

=== ARQUIVO: templates/training-cycle-brief.md ===

# TRAINING CYCLE BRIEF

> Gerado pela Skill `training-science`. Destinatário: módulo de montagem do treino. **Este documento define princípios e restrições, não a ficha.**
> Convenções: `[E1–E7]` grau de evidência · consistência (Consistente/Limitada/Conflitante/Prática) · confiança individual (A/M/B) · `S-xx` = ID em `references/sources-registry.md`. Distinguir **Dado** (observado) / **Interpretação** / **Recomendação**.

## 0. Metadados
- Ciclo analisado: #__ (datas) · Próximo ciclo: #__ (duração prevista: __ semanas)
- Data da análise: __ · Fontes de dados consultadas: __ (onde no projeto)
- **Dados ausentes/ambíguos**: __ (impacto na confiança)
- Resumo em 5 linhas (decisões-chave):
  1. …

## A. Estado atual
- Nível de treinamento (com base em quê): __
- Composição corporal atual e tendência (síntese; detalhe em C)
- Desempenho atual (exercícios-âncora, marcos)
- Contexto: rotina, sono/estresse (se disponível), esportes, restrições, preferências

## B. Análise do ciclo anterior
| Tópico | Dado | Interpretação | Confiança |
|---|---|---|---|
| O que funcionou | | | |
| O que não funcionou / estagnou | | | |
| Progressões obtidas (por exercício-âncora) | | | |
| Volume semanal por grupo muscular (séries duras) e distribuição | | | |
| Intensidade/proximidade da falha (RIR/RPE reportado) | | | |
| Frequência por grupo muscular e espaçamento | | | |
| Resposta por exercício (progressão, estabilidade, estímulo/fadiga, redundância) | | | |
| Sinais de fadiga / recuperação | | | |
| Aderência (sessões realizadas/planejadas) e qualidade do registro | | | |
| Gargalos e limitações | | | |
| Interferência de outros esportes | | | |

## C. Bioimpedância (tendência, não ponto isolado)
- Série analisada (datas, aparelho, condições de medida): __
- Tabela de tendência: peso · massa muscular/esquelética · massa magra · % gordura · massa de gordura · água (total/intra/extra, se houver) · dados segmentares
- Ruído esperado / mudança mínima interpretável: __
- Conclusão graduada: **Mudança provável real** / **Indeterminada** / **Compatível com ruído ou hidratação** — com justificativa
- Triangulação com: peso, circunferências, fotos, desempenho
- Implicação para o objetivo (sem superinterpretar)

## D. Objetivo do próximo ciclo
- **Primário**: __ (perfil usado: goal-profiles §__)
- **Secundários**: __
- **Prioridades** (ordem, com justificativa): músculos/capacidades
- **Manter** (e por quê): __
- **Alterar** (e por quê — cada item ligado a adaptação/progressão/fadiga/objetivo/especificidade/preferência/necessidade prática): __

## E. Princípios para o próximo ciclo
Para cada item: recomendação · faixa · justificativa · `[E# · consistência · confiança]` · fonte.
1. **Volume** (séries duras/semana por grupo: manutenção / padrão / prioridade; trajetória intraciclo)
2. **Frequência** (por grupo e semanal total; espaçamento mínimo)
3. **Intensidade/carga** (zonas de repetição e sua função)
4. **Proximidade da falha** (RIR/RPE-alvo por tipo de exercício e fase; uso de falha)
5. **Progressão** (modelo e critérios de progredir/segurar/recuar; por tipo de exercício)
6. **Exercícios** (critérios de seleção/substituição por características; o que manter por continuidade; o que trocar e por quê)
7. **Distribuição semanal** (restrições para o módulo de montagem: espaçamento, dias de esporte, membros a poupar)
8. **Descanso entre séries** (faixas por classe de exercício)
9. **Recuperação e fadiga** (gatilhos de ajuste; estratégia)
10. **Periodização** (modelo, fases, semana de deload/estratégia, pontos de decisão)
11. **Interação com esportes/cardio** (regras de convivência)

## F. Estratégias a evitar (com base no histórico)
| Estratégia | Por que evitar neste indivíduo/ciclo | Evidência/observação |
|---|---|---|

## G. Indicadores de acompanhamento no próximo ciclo
| Variável | Como medir | Frequência | Limiar de interpretação | Ação se fora do esperado |
|---|---|---|---|---|
(Ex.: progressão de carga/reps nos exercícios-âncora; RIR reportado; séries duras realizadas; peso corporal semanal médio; bioimpedância no fim do ciclo em condições padronizadas; sono/fadiga subjetiva; dor/desconforto articular; desempenho esportivo.)
- **Hipóteses a testar no ciclo** (formuladas de modo falsificável): __
- **Regras de decisão pré-definidas** (ex.: "se X cair por 2 semanas → deload antecipado"): __

## H. Divergências e decisões em aberto
| Ponto | Solicitação/prática atual | Problema identificado | Alternativa proposta | Decisão final (sistema/usuário) |
|---|---|---|---|---|

## I. Incertezas e limites
- Principais incertezas e como seriam reduzidas (dado a coletar / teste no ciclo)

## J. Referências usadas
Lista só de IDs do registro ou fontes verificadas na sessão (com PMID/DOI/URL e data de verificação). Itens sem fonte verificável marcados como "prática sem fonte".

## K. Checklist de qualidade (marcar)
- [ ] Contexto individual · [ ] ciclo anterior · [ ] bioimpedância com incerteza · [ ] objetivo claro · [ ] volume/intensidade · [ ] recuperação · [ ] outros esportes · [ ] mudanças justificadas (sem variedade gratuita) · [ ] evidência adequada · [ ] incertezas explícitas · [ ] **nenhuma referência inventada** · [ ] sem complexidade desnecessária · [ ] não monta a ficha
