if  ! [ /opt/protoc/ ]; then
    wget -q https://github.com/google/protobuf/releases/download/v3.0.0/protoc-3.0.0-linux-x86_64.zip
    sudo mkdir -p /opt/protoc
    sudo unzip /home/vagrant/protoc-3.0.0-linux-x86_64.zip -d /opt/protoc 
    rm protoc-3.0.0-linux-x86_64.zip
fi
