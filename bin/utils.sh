#!/bin/bash

printDescription() {
    MAGENTA='\033[1;35m'
    NC='\033[0m' # No Color
	printf "${MAGENTA}$@\n${NC}"
}

loadEnv() {
    printDescription "Loading .ENV"
    dotenv=$(pwd)/.env
    if [ -f $dotenv ]; then
        while read -r line; do
            if [[ $line =~ ^#.*$ ]]; then
                continue
            else
#                printf "$line \n"
                export $line &> /dev/null || true
            fi
        done < <(cat $dotenv)
    fi
}
