#!/bin/bash

#settings
jupyter_cont_port=8888
contdatadir=/data

#list of packages to keep updated
packages=(oxyba)

#Update if online
echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "Online - Upgrade Packages (without cache)"
    for pkg in "${packages[@]}"; do
        pip install "${pkg}" --upgrade --no-cache-dir 
    done
else
    echo "Offline"
fi

#starte notebook
jupyter notebook \
    --ip=0.0.0.0 --port=${jupyter_cont_port} \
    --allow-root --no-browser \
    --notebook-dir="${contdatadir}" \
    --NotebookApp.token= 

#successfully done
exit 0
