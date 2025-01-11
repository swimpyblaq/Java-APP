### 1 - Generate the .jar files with Terminal

```
./mvnw clean install -DskipTests
```

### 2 - Run on your local machine with

```
java -jar target/demoexample.jar
```

### 3 - Check it is working with

```
curl --location 'http://localhost:8080'
```

- You should see - "I AM WORKING HERE"