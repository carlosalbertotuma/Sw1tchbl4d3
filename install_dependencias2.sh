#!/bin/bash

echo "Instalando dependencias do Sw1tchbl4d3 v3.0"
echo "By bl4dsc4n"

# Função para verificar e instalar um pacote
check_install_package() {
    if ! command -v "$1" &>/dev/null; then
        echo "Instalando $2..."
        sudo apt-get update
        sudo apt-get upgrade -y
        sudo apt-get install -y "$2" || echo "Falha ao instalar $2"
    else
        echo "$2 OK"
    fi
}

echo "Verificando e instalando ferramentas..."

# Verificação e instalação das ferramentas
check_install_package nmap nmap
check_install_package git git
check_install_package gobuster gobuster
check_install_package wpscan wpscan
check_install_package sqlmap sqlmap
check_install_package host dnsutils
check_install_package joomscan joomscan
check_install_package wget wget
check_install_package wget2 wget2
check_install_package whatweb whatweb
check_install_package wafw00f wafw00f
check_install_package sslscan sslscan
check_install_package sed sed
check_install_package onesixtyone onesixtyone
check_install_package enum4linux enum4linux
check_install_package curl curl
check_install_package net-tools net-tools
check_install_package smbclient smbclient
check_install_package nbtscan nbtscan
check_install_package msfvenom metasploit-framework
check_install_package dirsearch dirsearch
check_install_package davtest davtest
check_install_package cadaver cadaver
check_install_package steghide steghide
check_install_package john john
check_install_package hydra hydra
check_install_package hashcat hashcat
check_install_package ssh openssh-client
check_install_package nc ncat
check_install_package lynx lynx
check_install_package crunch crunch
check_install_package pwgen pwgen
check_install_package cewl cewl
check_install_package go golang
check_install_package python3 python3
check_install_package python2.7 python2.7
check_install_package python3-pip python3-pip
check_install_package exploitdb exploitdb
echo
echo "Verificacao e instalacao concluida."
