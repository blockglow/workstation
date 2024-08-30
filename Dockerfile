FROM archlinux:latest

RUN yes | pacman -Syu cmake clang git openssh

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

RUN systemctl start sshd && systemctl enable sshd

RUN ufw allow 22/tcp
