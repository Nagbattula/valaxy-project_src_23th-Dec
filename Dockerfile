FROM openjdk:8
	ADD jarstaging/com/valaxy/demo-workshop/2.1.2/demo-workshop-2.1.2.jar valaxy-nag.jar
	ENTRYPOINT ["java", "-jar", "valaxy-nag.jar"]