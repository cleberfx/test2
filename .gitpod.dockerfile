FROM gitpod/workspace-mysql

ARG ROOT_PASSWORD=dev123
ENV MYSQL_ROOT_PASSWORD=${ROOT_PASSWORD}

USER root
# Install custom tools, runtime, etc.
ARG ROOT_PASSWORD=dev123
ENV MYSQL_ROOT_PASSWORD=${ROOT_PASSWORD}

RUN apt-get update && apt-get install -y \
        git-flow \
	graphviz \
        && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
	
	
	

USER gitpod
# Apply user-specific settings
	RUN bash -c "npm install -g generator-jhipster \
	&& npm install -g @angular/cli"
	
	#CMD ["bash", "-c", "mysql \
 	 #&& UPDATE mysql.user SET authentication_string = PASSWORD ('Root123!') WHERE User = 'root' AND Host = 'localhost';  \
 	 #&& FLUSH PRIVILEGES;  \
	 #&& exit;"]
#ENV MYSQL_ROOT_PASSWORD=Root123!

# Give back control
USER root

