FROM mcr.microsoft.com/azure-cli:latest

LABEL "com.github.actions.name"="az-blob-storage-upload"
LABEL "com.github.actions.description"="Uploads assets to Azure Blob Storage"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="green"
LABEL "repository"="https://github.com/idrm/azure-blob-storage-upload"
LABEL "homepage"="https://github.com/idrm/azure-blob-storage-upload"
LABEL "maintainer"="idrm"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
