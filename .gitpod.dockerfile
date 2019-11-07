FROM gitpod/workspace-mysql

USER root
# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y \
        git-flow \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod
# Apply user-specific settings
#ENV RUNUSER safeuser
#ENV WORKDIR /var/git-repo-home
#ENV UID 667

#RUN useradd -d $WORKDIR -u $UID -m -s /bin/bash $RUNUSER

#VOLUME /var/git-repo-home

#WORKDIR /var/git-repo-home

#USER $RUNUSER

#ENTRYPOINT ["git", "flow"]

# Give back control
USER root

