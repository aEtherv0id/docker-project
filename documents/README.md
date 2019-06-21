#README#

Here are some guidelines in using the contents of this Project:

#Images:#

   This part contains images or VMs that were built to explore Docker and Containerization in general.
The images produced may increase in time (once other contributors would add their own,
or update the existing ones if they are not satisfied with the current configurations).

   As a rule of thumb, we want to make the images as lean and as lightweight as possible, so as not to
contribute much to the memory and processor load of the host systems.

   The images would, at the least, contain the following:
   * The core OS - Linux, 64-bit, either Alpine, Ubuntu, or CentOS Linux flavours
   * net-tools - core networking tools: ifconfig, if, ip, netstat, traceroute, ping
   * productivity tools - nano (text editor), git, package managers (apk, apt, rpm, yum, etc.)
   * basic security tools - SSH, SSH server, firewall, iptables
   * docker applications - docker, docker-compose, etc.
   * The "shell-tools" framework (Develoment In-Progress) - a framework designed to make server setup 
     and maintenance easier and more painless ;) You can also join in the fun to help making the framework
     better. Visit https://gitlab.com/joji.angas/shell-tools to learn more about this exciting framework!


#Dockerfiles#

   This part contains Dockerfiles -  the cornerstone in creating and configuring Docker images.
These files would contain configuration options for container creation and launching. 
Docker images can be created from these container instances, which can then be further worked upon
to create better containers.


#Docker-Compose#

   This part contains docker-compose files - which are configuration files that can be used to 
orchestrate the creation of ecosystems comprising of Docker containers.

   A sample use case for this is the creation of a Web Application deployment environment.
You can design the ecosystem to have a Web Frontend Server, an Application Server, and a Database Server.
The creation and configuration of these ecosystem components can be configured using docker-compose config files,
and the containers can be created and launched by running the docker-compose file.


#Documents#

   This is where you got this file. Self-explanatory. Contains documentation regarding all tools and artefacts
Found within this Project. Contribute new documents, or update existing documents to contain newer information.
Come on, join the fun! ;)






v1.0, (C) 2019 Joji Angas