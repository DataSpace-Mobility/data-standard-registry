
PROTOC 					= protoc
I_PATH_FARE 			= transit/fare_collection
REALTIME_FILES_FARE 	= $(I_PATH_FARE)/FareCollection.proto common/Header.proto

all: gen-doc-afcs

gen-doc-afcs:
	mkdir -p ./build/doc/$(I_PATH_FARE)
	$(PROTOC) -I=./common -I=./$(I_PATH_FARE) --doc_out=./build/doc/$(I_PATH_FARE) --doc_opt=json,realtime.json $(REALTIME_FILES_FARE)
