
PROTOC 					= protoc
I_PATH_ATCS 			= transit/atcs
STATIC_FILES_ATCS		= $(I_PATH_ATCS)/TrafficSignalStatic.proto common/Header.proto common/Location.proto
REALTIME_FILES_ATCS 	= $(I_PATH_ATCS)/TrafficSignalRealtime.proto common/Header.proto

all: gen-doc-atcs

gen-doc-atcs:
	mkdir -p ./build/doc/$(I_PATH_ATCS)
	$(PROTOC) -I=./common -I=./$(I_PATH_ATCS) --doc_out=./build/doc/$(I_PATH_ATCS) --doc_opt=json,static.json $(STATIC_FILES_ATCS)
	$(PROTOC) -I=./common -I=./$(I_PATH_ATCS) --doc_out=./build/doc/$(I_PATH_ATCS) --doc_opt=json,realtime.json $(REALTIME_FILES_ATCS)
