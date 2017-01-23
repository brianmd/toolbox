# This is a development docker container, and thus no attempt
# is made to keep the size small by cleaning apt caches, etc.
# These caches are kept intentionally to enable easier updating.

FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y git

# RUN mkdir /root/code

RUN git clone https://github.com/brianmd/toolbox.git /root/code/toolbox

#    git clone git@github.com:brianmd/toolbox.git code/tollbox

WORKDIR /root/code/toolbox/install

RUN /root/code/toolbox/install/install apt-update utils tmux dotfiles direnv spacemacs
# RUN /root/code/toolbox/install/install apt-update
# RUN /root/code/toolbox/install/install utils
# RUN /root/code/toolbox/install/install tmux
# RUN /root/code/toolbox/install/install dotfiles
# RUN /root/code/toolbox/install/install spacemacs
# RUN echo zsh-it
RUN /root/code/toolbox/install/install zsh

# RUN cd /root/.config/dotfiles && git pull
# # RUN apt-get install -y golang direnv
# RUN echo "installing direnv"



RUN cd /root/code/toolbox && git pull



# RUN /root/code/toolbox/install/install direnv

RUN /root/code/toolbox/install/install java


RUN echo 1
RUN cd /root/code/toolbox && git pull
# RUN /root/code/toolbox/install/install lein

WORKDIR /root
CMD ["/bin/zsh"]




# FROM index.docker.io/clojure:lein-2.6.1
# #FROM index.docker.io/bach/clojure-user


# #####   look at dbus-x11



# # WARNING: pw is lame.

# USER root

# ENV UNAME toolbox
# ENV PW toolboxpw
# # ENV USERID 64534
# # ENV GIT_KEY git_key

# COPY install /root
# WORKDIR /root/install
# ENV DEBIAN_FRONTEND noninteractive
# RUN install "apt-update zsh"
# # RUN /install/apt-update && \
# #     /install/utils && \
# #     /install/gcloud && \
# #     /install/user-create && \
# #     /install/apt-cleanup

# USER $UNAME


# # RUN apt-get clean && \
# #     rm -rf /var/lib/apt/lists/*/tmp/* /var/tmp/*

# # RUN ufw allow ssh
# #     ufw allow 60000:60100/udp  # mosh
# #     ufw allow http
# #     ufw allow https
# #     ufw allow 32400/tcp  # plex
# #     ufw allow 1900/udp
# #     ufw allow 32469/udp
# #     ufw allow 5353/udp
# #     ufw enable

# # # NOTE: commands from here on run as user $UNAME

# USER $UNAME

# # RUN pwd
# # RUN ls -la /home/$UNAME
# # RUN whoami
# # RUN ls -la /home
# # RUN ls -la /home/clojure

# RUN mkdir -p /home/$UNAME/.config && \
#     git clone https://github.com/brianmd/dotfiles.git /home/$UNAME/.config/dotfiles && \
#     git clone https://github.com/brianmd/binfiles.git /home/$UNAME/.config/binfiles && \
#     git clone https://github.com/syl20bnr/spacemacs /home/$UNAME/.emacs.d

# WORKDIR /home/$UNAME/.config/dotfiles
# RUN make relink && \
#     mkdir -p /home/$UNAME/.ssh

# RUN emacs -nw -batch -u "$UNAME" -q -kill && \
#     emacs -nw -batch -u "$UNAME" -q -kill && \
#     sed -i "s/dotspacemacs-install-packages 'all/dotspacemacs-install-packages 'used-but-keep-unused/g" $HOME/.spacemacs && \
#     emacs -nw -batch -u "$UNAME" -q -kill

# #RUN cd /home/$UNAME/.config/dotfiles && git pull && echo 1

# WORKDIR /home/$UNAME/code
# CMD ["zsh"]

