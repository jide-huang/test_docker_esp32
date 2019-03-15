deps_config := \
	/home/jdhua/esp/esp-idf/components/app_trace/Kconfig \
	/home/jdhua/esp/esp-idf/components/aws_iot/Kconfig \
	/home/jdhua/esp/esp-idf/components/bt/Kconfig \
	/home/jdhua/esp/esp-idf/components/driver/Kconfig \
	/home/jdhua/esp/esp-idf/components/esp32/Kconfig \
	/home/jdhua/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/home/jdhua/esp/esp-idf/components/esp_http_client/Kconfig \
	/home/jdhua/esp/esp-idf/components/ethernet/Kconfig \
	/home/jdhua/esp/esp-idf/components/fatfs/Kconfig \
	/home/jdhua/esp/esp-idf/components/freertos/Kconfig \
	/home/jdhua/esp/esp-idf/components/heap/Kconfig \
	/home/jdhua/esp/esp-idf/components/libsodium/Kconfig \
	/home/jdhua/esp/esp-idf/components/log/Kconfig \
	/home/jdhua/esp/esp-idf/components/lwip/Kconfig \
	/home/jdhua/esp/esp-idf/components/mbedtls/Kconfig \
	/home/jdhua/esp/esp-idf/components/nvs_flash/Kconfig \
	/home/jdhua/esp/esp-idf/components/openssl/Kconfig \
	/home/jdhua/esp/esp-idf/components/pthread/Kconfig \
	/home/jdhua/esp/esp-idf/components/spi_flash/Kconfig \
	/home/jdhua/esp/esp-idf/components/spiffs/Kconfig \
	/home/jdhua/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/home/jdhua/esp/esp-idf/components/vfs/Kconfig \
	/home/jdhua/esp/esp-idf/components/wear_levelling/Kconfig \
	/home/jdhua/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/jdhua/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/jdhua/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/jdhua/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
