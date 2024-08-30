FROM archlinux:latest

RUN yes | pacman -Syu cmake clang git openssh

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''

EXPOSE 22
