#!/bin/bash

function log() {
    echo -e "\033[1m===> $1\033[0m"
}

function error() {
    echo -e "\033[31m===> $1\033[0m"
}


echo '
███╗   ███╗███████╗████████╗ █████╗ ██████╗  █████╗ ███████╗███████╗
████╗ ████║██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔════╝
██╔████╔██║█████╗     ██║   ███████║██████╔╝███████║███████╗█████╗
██║╚██╔╝██║██╔══╝     ██║   ██╔══██║██╔══██╗██╔══██║╚════██║██╔══╝
██║ ╚═╝ ██║███████╗   ██║   ██║  ██║██████╔╝██║  ██║███████║███████╗
╚═╝     ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝

██████╗ ██╗      █████╗ ██╗   ██╗██████╗  ██████╗  ██████╗ ██╗  ██╗
██╔══██╗██║     ██╔══██╗╚██╗ ██╔╝██╔══██╗██╔═══██╗██╔═══██╗██║ ██╔╝
██████╔╝██║     ███████║ ╚████╔╝ ██████╔╝██║   ██║██║   ██║█████╔╝
██╔═══╝ ██║     ██╔══██║  ╚██╔╝  ██╔══██╗██║   ██║██║   ██║██╔═██╗
██║     ███████╗██║  ██║   ██║   ██████╔╝╚██████╔╝╚██████╔╝██║  ██╗
╚═╝     ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═════╝  ╚═════╝  ╚═════╝ ╚═╝  ╚═╝
'

main() {
    log 'Welcome to metabase playbook shell.'
    log 'We do not collect any sensitive information, like password.'
    echo
    log 'step 1. Input information address of your Metabase instance.'
    echo
    log 'IP address to install. e.g.) 172.31.0.14'
    read -p 'ip > ' ip

    log 'Input MySQL password to store Metabase data. e.g.) q2oenqnbowh20bv93ge4'
    read -p 'MySQL Password > ' mysql_password

    log 'Input SSH Key path to connect the instance. default) $HOME/.ssh/id_rsa'
    read -p 'ssh key path > ' ssh_key_path

    log 'Sorry, this script is WIP.'
}

main
