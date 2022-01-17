#!/bin/bash
username=""
if [[ "$username" != "" ]]; then
echo Введи название проекта:
read repo

main='package main

import (

)

func main() {

}'
mod="
module github.com/"$username"/"$repo"

go 1.17

require (
)
"
mkdir "$repo"
cd "./$repo"
echo "###$repo" > README.md
echo "$main" > main.go
echo "$mod" > mod.go
cd ..
else 
echo Измени конфиг!
fi
