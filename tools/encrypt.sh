#!/bin/sh

set -e

base_dir=$(cd $(dirname $0) && pwd)

while [ -e "./${tmp_dir}" -o -z "$tmp_dir" ] 
do
    tmp_dir=$(head -10 /dev/urandom | sha256sum -)
    tmp_dir="${base_dir}/${tmp_dir}"
    for hash in $tmp_dir
    do
        tmp_dir=$hash
        break
    done
done

mkdir "$tmp_dir"

in_file="${tmp_dir}/plain"
out_file="${tmp_dir}/cipher"

echo "$1" > "${in_file}"

openssl enc -e -aes-256-cbc -p -a -in "${in_file}" -out "$out_file" -pbkdf2 -iter $(expr 200 \* 10000 )

cat "${out_file}"

rm -rf "${tmp_dir}"