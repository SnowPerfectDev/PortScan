#!/bin/bash

# Verifica se o nmap está instalado
if ! command -v nmap &> /dev/null; then
    echo "O nmap não parece estar instalado. Por favor, instale-o."
    exit 1
fi

# Verifica se foi fornecido um argumento (IP)
if [ $# -eq 0 ]; then
    echo "Uso: $0 <endereço-IP>"
    exit 1
fi

# IP fornecido como argumento
ip=$1

# Executa o comando nmap e filtra a saída para exibir apenas a linha desejada
nmap_output=$(nmap -Pn -sV -p5555 $ip)
filtered_output=$(echo "$nmap_output" | grep "5555/tcp filtered freeciv")

echo "Resultado da varredura de portas para o IP: $ip"
echo "----------------------------------------"
if [ -n "$filtered_output" ]; then
    echo "$filtered_output"
else
    echo "Nenhuma correspondência encontrada."
fi
