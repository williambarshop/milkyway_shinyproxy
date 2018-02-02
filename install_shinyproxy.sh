git clone https://github.com/openanalytics/shinyproxy.git
cd shinyproxy
sed -i 's/}, 10, 2000);/}, 10, 6000);/g' src/main/java/eu/openanalytics/services/DockerService.java

mvn -U clean install
cp target/*.jar ../shinyproxy-build.jar
