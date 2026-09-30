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
