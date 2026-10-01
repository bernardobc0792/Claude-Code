#!/bin/bash
# Gera dist/training-science-completo.md juntando SKILL.md + references + templates em um único arquivo.
# Uso: bash build-consolidated.sh   (rodar sempre que algum arquivo for atualizado)
cd "$(dirname "$0")"
out=dist/training-science-completo.md
{
  echo "# TRAINING-SCIENCE — PACOTE CONSOLIDADO (arquivo único)"
  echo "Os caminhos citados no texto (ex.: references/hypertrophy.md) correspondem às seções '=== ARQUIVO: ... ===' abaixo."
  for f in SKILL.md references/*.md templates/*.md; do
    echo; echo "=== ARQUIVO: $f ==="; echo
    cat "$f"
  done
} > "$out"
