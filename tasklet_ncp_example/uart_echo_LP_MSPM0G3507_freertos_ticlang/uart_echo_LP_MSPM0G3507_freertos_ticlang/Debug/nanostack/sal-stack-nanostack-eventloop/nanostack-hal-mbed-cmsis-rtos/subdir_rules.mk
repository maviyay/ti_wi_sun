################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
nanostack/sal-stack-nanostack-eventloop/nanostack-hal-mbed-cmsis-rtos/%.o: ../nanostack/sal-stack-nanostack-eventloop/nanostack-hal-mbed-cmsis-rtos/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs1270/ccs/tools/compiler/ti-cgt-armllvm_3.2.1.LTS/bin/tiarmclang.exe" -c -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -O2 -I"C:/Users/a0225881/workspace_v12/uart_echo_LP_MSPM0G3507_freertos_ticlang" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_1_30_00_03/kernel/freertos/Source/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source" -I"C:/ti/mspm0_sdk_1_30_00_03/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/posix/ticlang" -I"C:/Users/a0225881/workspace_v12/freertos_builds_LP_MSPM0G3507_release_ticlang" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/nanostack-libservice/mbed-client-libservice" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/nanostack-libservice" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/nanostack-libservice/mbed-client-libservice/platform" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/mbed-client-randlib/mbed-client-randlib/platform" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/mbed-client-randlib/mbed-client-randlib" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/mbed-client-randlib" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/mbed-trace" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/mbed-coap" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/mbed-coap/source/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/nanostack" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/mdns" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/mdns/fnet" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/mdns/fnet/fnet_stack" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/mdns/fnet/fnet_stack/stack" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/mdns/fnet/fnet_stack/services/serial" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Core/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/6LoWPAN" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack-eventloop" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack-eventloop/nanostack-event-loop" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack-eventloop/nanostack-event-loop/platform" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/nanostack-hal-mbed-cmsis-rtos" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/mbed-mesh-api/source/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/mbed-mesh-api/mbed-mesh-api" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/mbed-mesh-api" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/coap-service/coap-service" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/coap-service/source/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/ti_wisunfan/mbedtls" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/ti_wisunfan/mbedtls/platform/inc" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/ti_wisunfan/mbedtls/inc" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/ti_wisunfan/mbedtls/platform/COMPONENT_PSA_SRV_IMPL/COMPONENT_NSPE" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/nanostack-hal-mbed-cmsis-rtos" -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"nanostack/sal-stack-nanostack-eventloop/nanostack-hal-mbed-cmsis-rtos/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


