include transit/atcs/Makefile
include transit/ev_charging/Makefile
include transit/fare_collection/Makefile
include transit/gtfs/Makefile

py:
	mkdir -p build/py
	protoc -I=./common -I=./transit/fare_collection -I=./transit/ev_charging --python_out=build/py/ ./transit/**/*.proto

java:
	mkdir -p build/java
	protoc -I=./common -I=./transit/atcs --java_out=build/java/ ./transit/**/*.proto

java-atcs:
	mkdir -p build/java
	protoc -I=./common -I=./transit/atcs --java_out=build/java/ ./transit/atcs/*Realtime.proto ./common/Header.proto

clean:
	rm -rf build