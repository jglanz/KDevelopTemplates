#!/bin/bash

mkdir -p ~/.local/share/kdevfiletemplates/template_descriptions/
mkdir -p ~/.local/share/kdevfiletemplates/templates/

# This automatically updates/installs the template in your local templates folder
if [[ $(basename "$PWD") == "%{PROJECTDIRNAME}" ]];then
    mkdir -p build
    rm -rf build/*
    cd build
    cmake ..
    make
    cp ../%{APPNAMELC}/%{APPNAMELC}.desktop ~/.local/share/kdevfiletemplates/template_descriptions/
    cp %{APPNAMELC}.tar.bz2 ~/.local/share/kdevfiletemplates/templates/
else
    echo "Please go to the project root"
fi