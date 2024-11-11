#!/bin/bash
#Ele precisa estar no diretório correto para execução (como /usr/lib/cgi-bin no Apache), e ter permissão de execução.

# Configurações de cabeçalho para resposta CGI
echo "Content-type: text/html"
echo ""

# Lê dados do formulário
read QUERY_STRING

# Extrai o valor do parâmetro "nome" a partir da QUERY_STRING
nome=$(echo "$QUERY_STRING" | sed -n 's/^.*nome=\([^&]*\).*$/\1/p' | sed "s/%20/ /g")

# Exibe a página HTML com a saudação personalizada
echo "<html>"
echo "<head><title>Saudação Personalizada</title></head>"
echo "<body>"
echo "<h1>Olá, $nome! Bem-vindo ao nosso site!</h1>"
echo "</body>"
echo "</html>"
