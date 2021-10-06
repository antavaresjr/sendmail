#!/bin/bash
#
# Script sendmail.sh
#
# Envia via curl e-mail de origem para destino editáveis
# preenchendo os campos title e subject por arquivo .txt
#
# Autor André Luiz Tavares Macedo Junior
# Data: 02/09/2021
#
# Version: 1.0
# Version: 1.1
#
# Readme
#
# Informar --url <smtp.dom:porta> --mail-from <remetemnte@dom>
# --mail-rcpt <destinatario@dom> --upload-file <arquvo.txt>
# --user <usuario:senha>
#
# Change log
#
# V1.1 - Adicionada a leitura de arquivo de configuração
# e adicionada variáveis para campos de user, pass, file
# e url do smtp.
# V1.2 - Modificado os campos --mail-from e --mail-rcpt
# para receber os dados do arquivo sendmail.conf
#
# To do list
#
# 1 - Arquivo de config - OK!
# 2 - Adicionar variáveis para campos - OK!
# 3 - Adicionar opções (N/A)
# 4 - Criar for para popular variáveis dos campos:
#       --url / --mail-from / mail-rcp / --upload-file
#       --user
#

# Rotina de read e set do arquivo de configuração
# sendmail.conf
#

set $(while read config
        do echo $config | sed "s/#[^#]*//; s/[^=]*=//; s/'//g"
	done < sendmail.conf)

# Execução do curl e envio do e-mail
#
curl --url ''$3'' --ssl-reqd \
        --mail-from ''$5'' --mail-rcpt ''$6'' \
            --upload-file $4 --user ''$1':'$2''

