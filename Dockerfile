FROM node:alpine

ENV MAIN_PATH=/usr/local/bin/cmcmapper/

# update and install dependency
RUN apk update && apk upgrade
RUN apk add git wget bash zsh yarn

# run the installation script
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true


# Set up Project
RUN yarn install

# expose 8080 on container
EXPOSE 8080

# set app serving to permissive / assigned
ENV VUE_HOST=0.0.0.0
# set app port
ENV VUE_PORT=8080

CMD cd ${MAIN_PATH} && ["zsh"]
