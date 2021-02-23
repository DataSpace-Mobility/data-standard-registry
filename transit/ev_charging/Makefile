
PROTOC 				= protoc
I_PATH_EV 			= transit/ev_charging
STATIC_FILES_EV 	= $(I_PATH_EV)/EVChargingStatic.proto common/Header.proto common/OperatingSchedule.proto common/ModeOfPayment.proto common/Location.proto
REALTIME_FILES_EV 	= $(I_PATH_EV)/EVChargingRealtime.proto $(I_PATH_EV)/BatteryType.proto common/Header.proto common/OperatingSchedule.proto common/ModeOfPayment.proto common/Location.proto common/VehicleType.proto

all: gen-doc-ev

gen-doc-ev:
	mkdir -p ./build/doc/$(I_PATH_EV)
	$(PROTOC) -I=./common -I=./$(I_PATH_EV) --doc_out=./build/doc/$(I_PATH_EV) --doc_opt=json,static.json $(STATIC_FILES_EV)
	# $(PROTOC) -I=./common -I=./$(I_PATH_EV) --doc_out=./build/doc/$(I_PATH_EV) --doc_opt=json,realtime.json $(REALTIME_FILES_EV)
