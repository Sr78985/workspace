#!/bin/bash

echo "📅 $(date)"
echo "📦 Adicionando arquivos..."
git add .

echo "✍️ Mensagem do commit:"
read msg

if [ -z "$msg" ]; then
  echo "❌ Commit cancelado (mensagem vazia)"
  exit 1
fi

git commit -m "$msg"

echo "🚀 Enviando..."
git push

echo "✅ Tudo atualizado!"
