# This will be a simple script to fetch the Shinyproxy jar
# file (if it doesn't already exist), and execute shinyproxy pointed at
# localhost:2375 for Docker. (or as configured in the application yaml file)

SHINYPROXFILE=shinyproxy-build.jar

if [ ! -f $SHINYPROXFILE ]; then
    sh install_shinyproxy.sh
fi
#wget -N https://www.shinyproxy.io/downloads/shinyproxy-0.8.7.jar && java -jar shinyproxy-0.8.7.jar
java -jar shinyproxy-build.jar

