FROM openjdk:8
	ADD /home/ubuntu/jenkins/workspace/master_23rd_Dec-multibranch_main/jarstaging/com/valaxy/demo-workshop/2.1.2/demo-workshop-2.1.2.jar valaxy-nag.jar
	ENTRYPOINT ["java", "-jar", "valaxy-nag.jar"]