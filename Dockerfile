FROM oraclelinux:8.4 
LABEL name=sankar
RUN dnf install java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64 maven git  -y 
RUN mkdir /sankar-project
WORKDIR /sankar-project
RUN git clone https://github.com/sankarraobotcha123/springboot.git
WORKDIR springboot
RUN mvn clean package
