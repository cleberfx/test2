FROM gitpod/workspace-mysql



USER root
# Install custom tools, runtime, etc.


RUN apt-get update && apt-get install -y \
        git-flow \
	graphviz \
        && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
	

	

USER gitpod
# Apply user-specific settings
	RUN bash -c "npm install -g generator-jhipster \
	&& npm install -g @angular/cli"
	
	
 	#RUN mysql -e "FLUSH PRIVILEGES;"
	 #&& exit;"]
#ENV MYSQL_ROOT_PASSWORD=Root123!

# Give back control
USER root

CMD mysql -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD ('Root123@');"

	
