* open
> open – Uma aplicação está escutando conexões nesta porta.
#
* closed
> closed – Pacote recebido, mas nenhuma aplicação escutando na porta.
#
* filtered
> filtered – Pacote não recebido, e estado não pôde ser estabelecido. Pacotes podem estar sendo descartados por filtros.
#
* unfiltered
> unfiltered – Pacote recebido, mas estado não pôde ser estabelecido.
#
* open/filtered
> open/filtered – Porta filtrada ou aberta, mas o nmap não conseguiu estabelecer o estado.
#
* closed/filtered
> closed/filtered – Porta filtrada ou fechada, mas o nmap não conseguiu estabelecer o estado.
***
* Form of use
```bash 
$ ./PortScan.sh 8.8.8.8
