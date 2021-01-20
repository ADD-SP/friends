#!/bin/bash

function set_http_code() {
    http_code=`curl -l -m 30 -o /dev/null -s -w %{http_code} $1`
}

function set_redirect_url() {
    redirect_url=`curl -l -m 30 -o /dev/null -s -w %{redirect_url} $1`
}

lines=`cat tests/links.txt`
is_error=0

RED='\E[1;31m'
RES='\E[0m'
YELOW='\E[1;33m'
GREEN='\E[1;32m'

for line in $lines
do 
    error_msg=''
    set_http_code $line
    count=0
    set_redirect_url $line
    temp=$line
    while [ $http_code = 301 -o $http_code = 302 -o $http_code = 303 -o $http_code = 307 -o $http_code = 308 ]
    do
        echo -e "${YELOW}${http_code}${RES}: [${temp}] redirects to [${redirect_url}]."
        set_http_code $redirect_url
        ((count++))
        temp=$redirect_url
        set_redirect_url $redirect_url
        if [ $count -ge 10 ] ; then
            is_error=1
            break
        fi
    done
    if [ $http_code != 200 ] ; then
        is_error=1
        echo -e "${RED}${http_code}${RES}: ${line}"
    else
        echo -e "${GREEN}${http_code}${RES}: ${line}"
    fi
done

if [ $is_error != 0 ] ; then
    exit 1
else 
    exit 0
fi