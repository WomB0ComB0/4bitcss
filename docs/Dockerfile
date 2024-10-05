FROM mcr.microsoft.com/powershell AS powershell

FROM ruby:3.3.5-slim-bullseye AS jekyll

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN gem update --system && gem install jekyll && gem cleanup

COPY --from=powershell /usr /usr
COPY --from=powershell /lib /lib
COPY --from=powershell /lib64 /lib64
COPY --from=powershell /bin /bin
COPY --from=powershell /opt /opt

SHELL ["/bin/pwsh", "-nologo", "-command"]

ENTRYPOINT [ "/bin/pwsh", "-noexit" ]

