py:
	mkdir -p build/py
	protoc -I=./common -I=./transit/fare_collection -I=./transit/ev_charging --python_out=build/py/ ./transit/**/*.proto

java:
	mkdir -p build/java
	protoc -I=./common -I=./transit/fare_collection --java_out=build/java/ ./transit/**/*.proto

gen-doc:
	mkdir -p build/doc
	protoc -I=./common -I=./transit/ev_charging --doc_out=./build/doc --doc_opt=json,doc.json common/*.proto transit/ev_charging/*.proto

clean:
	rm -rf build