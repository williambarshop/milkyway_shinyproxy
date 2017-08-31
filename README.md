# milkyway_shinyproxy
Milkyway ShinyProxy for the Milkyway Docker Swarm Mode deployment

## **Requirements:**
- java 8
- wget
- git
- a functional, running Milkyway Docker Swarm Mode Stack (see: http://github.com/wohllab/milkyway_compose )

## Configuration of ShinyProxy
The default configuration provided here is preconfigured to connect over the default name for the Docker Milkyway Stack network (milkyway-stack_milkynet) to connect to Milkyway's Galaxy instance.
A user can manipulate this deployment to their hearts content after reading the configuration parameters provided by the ShinyProxy team at https://www.shinyproxy.io/configuration/

#### 1. Clone the repo by running `git clone https://github.com/wohllab/milkyway_shinyproxy.git`

#### 2. Change into the Shinyproxy git directory and execute the setup script with priviliges
```sudo sh ubuntu_setup.sh```
#####Note: If the user is NOT on Ubuntu, this script needs to be edited to match your system!  The intent of this script is to enable the TCP docker managment on port 2375, and then open port 81, restart docker, and pull the wbarshop/milkyway_shiny docker image.

#### 3. Run the ShinyProxy instance via `sudo sh run_shinyproxy.sh`
