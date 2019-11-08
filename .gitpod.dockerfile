FROM gitpod/workspace-mysql

USER root
# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y \
        git-flow \
        
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod
# Apply user-specific settings
npm install -g generator-jhipster 	


# Give back control
USER root

