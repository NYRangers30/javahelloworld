FROM java:7
#COPY /home/ubuntu/javahelloworld/src /home/root/javahelloworld/src
COPY src /root/javahelloworld/src
RUN mkdir /root/javahelloworld/bin
RUN javac -d /root/javahelloworld/bin /root/javahelloworld/src/HelloWorld.java
RUN echo "this is new" > /new-file.txt
ENTRYPOINT ["java", "-cp", "/root/javahelloworld/bin", "HelloWorld"]
