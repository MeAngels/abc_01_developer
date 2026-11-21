FROM openjdk:8-jre-alpine # AS $alias
COPY --from=$alias_build /app/target/generatefile.jar /app/app.jar
WORKDIR /app
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
