#!/bin/sh

ip=$1
outputFolder="conf.d"
templateFile="subdomain.conf"

rm -rf "${outputFolder}"
mkdir -p "${outputFolder}"

for domainWithPort in "$@"
do
    # skip parameters not in the format "domain:port"
    if [[ "$domainWithPort" != *":"* ]]; then
        continue
    fi
    domain=$(echo ${domainWithPort} | cut -d ':' -f 1)
    port=$(echo ${domainWithPort} | cut -d ':' -f 2)
    cat "${templateFile}" | sed \
        -e "s/___IPADDRESS___/"${ip}"/" \
        -e "s/___DOMAIN___/"${domain}"/" \
        -e "s/___PORT___/"${port}"/" \
        > "${outputFolder}/${domain}.conf"
done
