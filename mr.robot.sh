#!/bin/bash
#
# decimo.sh - Nosso Decimo progrmaa em shell - Mr. Robot
#
# Homepage: http://www.utah.com.br
# Autor: Filipe <fgrahl2010@gmail.com>
# Mantenedor: UTAH
#
# ----------------------------------------------------
#
# Este progrma é um robo interativo, estilo Alexia, chamado Mr Robot criado para invadir determinadas URLS,
# buscar vulnerabilidades e também verificar conectividades.
#
# Exemplo de execução:
# 
# $ ./mr.robo.sh
#
# Históricco de Versões
# Inciciando o programa
#
#Versão: 1.0
#
# COPYRIGHT: ESte programa é GPL
#
#
#
source /root/doshelltohell/instructions.txt

echo -e "\e[31m\e[1m\e[5mOla eu sou o Mr. Robot. Fui criado para atacar. Nao sou seu amigo, mas diga:\nO que você quuer que eu faça?\e[m\e[m\e[m"

sleep 2s

while true; do

	echo -e "\n"
	read -p "Diga Agora" ACTION
	echo -e "\n"

	case $ACTION in 
		*"ping"*|*"pingar"*|*"conectividade"*)
			DADO="$(( $RANDOM % 10))"
			ping -c 4 -4 "${sites[$DADO]}"
		;;	
		*"nmap"*|*"mapear"*|*"portas abertas"*)
			DADO="$(( $RANDOM % 10))"
			nmap -sS "${sites[$DADO]}"

		;;
		*"conect"*|*"access"*|*"ssh"*)
			DADO="$(( $RANDOM % 4))"
			ssh -l root "${openssh[$DADO]}"
		;;
	esac
done

