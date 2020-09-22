py:
	mkdir -p build/py
	protoc -I=./common -I=./transit/fare_collection --python_out=build/py/ ./transit/**/*.proto

java:
	mkdir -p build/java
	protoc -I=./common -I=./transit/fare_collection --java_out=build/java/ ./transit/**/*.proto

clean:
	rm -rf build