FROM centos
RUN mkdir /app 
RUN curl -O https://bootstrap.pypa.io/get-pip.py \
    python get-pip.py --user \
    export PATH=~/.local/bin:$PATH \
    source ~/.bash_profile \
    pip install awscli --upgrade --user \
    chmod 755 /usr/local/bin/* \
    chmod 755 /usr/bin/aws*
ENTRYPOINT /bin/sh
