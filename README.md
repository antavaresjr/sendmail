# sendmail
# Script sendmail.sh
#
Envia via curl e-mail de origem para destinos editáveis

preenchendo os campos title e subject por arquivo .txt
#
Autor: André Luiz Tavares Macedo Junior

Data: 02/09/2021
#
Version: 1.0

Version: 1.1
#
Readme
#
Informar --url <smtp.dom:porta> --mail-from <remetente@dom>

--mail-rcpt <destinatario@dom> --upload-file <arquvo.txt>

--user <usuario:senha>
#
# Change log
#
V1.1 - Adicionada a leitura de arquivo de configuraçãoe adicionada variáveis para campos de user, pass, file e url do smtp.
 
V1.2 - Modificado os campos --mail-from e --mail-rcpt para receber os dados do arquivo sendmail.conf

# To do list

1 - Criar script para acrescentar o sendmail ao cron;

2 - Acrescentar ao script a criação dos diretórios e arquivos para uso no sendmail.sh
