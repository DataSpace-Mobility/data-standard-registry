
PROTOC 					= protoc
I_PATH_GTFS 			= transit/gtfs
STATIC_FILES_GTFS 		= $(I_PATH_GTFS)/GTFSStatic.proto
REALTIME_FILES_GTFS 	= $(I_PATH_GTFS)/GTFSRealtime.proto

all: gen-doc-gtfs

gen-doc-gtfs:
	mkdir -p ./build/doc/$(I_PATH_GTFS)
	$(PROTOC) -I=./common -I=./$(I_PATH_GTFS) --doc_out=./build/doc/$(I_PATH_GTFS) --doc_opt=json,static.json $(STATIC_FILES_GTFS)
	$(PROTOC) -I=./common -I=./$(I_PATH_GTFS) --doc_out=./build/doc/$(I_PATH_GTFS) --doc_opt=json,realtime.json $(REALTIME_FILES_GTFS)
