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
