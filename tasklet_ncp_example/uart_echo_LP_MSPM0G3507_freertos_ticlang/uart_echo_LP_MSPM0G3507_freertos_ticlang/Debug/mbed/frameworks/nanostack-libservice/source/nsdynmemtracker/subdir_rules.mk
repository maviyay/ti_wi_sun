################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
mbed/frameworks/nanostack-libservice/source/nsdynmemtracker/%.o: ../mbed/frameworks/nanostack-libservice/source/nsdynmemtracker/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	@echo 'Flags: -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -O2 -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/mbed_port/ti-rf-driver/ti-rf-driver" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/apps/border_router_nanostack_tirf" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/apps/common/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/mbed_config/ws_border_router" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/mbed_port/ti-rf-driver/source" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/mbed_port/mbednanostack2tirtos" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/mbed_port/mbednanostack2tirtos/platform" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/mbed_port/mbedtls2tirtos" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/mbed_port/mbedtls2tirtos/platform" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/mbed_port/mbedtls2tirtos/mbedtls/mbed-crypto" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/nanostack-libservice/mbed-client-libservice" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/nanostack-libservice" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/nanostack-libservice/mbed-client-libservice/platform" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/mbed-client-randlib/mbed-client-randlib/platform" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/mbed-client-randlib/mbed-client-randlib" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/mbed-client-randlib" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/mbed-trace" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/mbed-coap" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/mbed-coap/source/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/nanostack" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/mdns" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/mdns/fnet" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/mdns/fnet/fnet_stack" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/mdns/fnet/fnet_stack/stack" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/mdns/fnet/fnet_stack/services/serial" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Core/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/6LoWPAN" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack-eventloop" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack-eventloop/nanostack-event-loop" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack-eventloop/nanostack-event-loop/platform" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/nanostack-hal-mbed-cmsis-rtos" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/mbed-mesh-api/source/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/mbed-mesh-api/mbed-mesh-api" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/mbed-mesh-api" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/coap-service/coap-service" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/coap-service/source/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/ti_wisunfan/mbedtls" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/ti_wisunfan/mbedtls/platform/inc" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/ti_wisunfan/mbedtls/inc" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/ti_wisunfan/mbedtls/platform/COMPONENT_PSA_SRV_IMPL/COMPONENT_NSPE" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/shell" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/config" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/uip" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/uip/conf" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/uip/inc" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/uip/pltfrm/sysbios" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/uip/net" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/services" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/hal/assert" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/hal/appasrt" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/hal/crypto" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/hal/platform" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/hal/rf" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/high_level" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/low_level" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/common/osal_port" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/common" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/common/boards" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/common/util" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/common/inc" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/common/stack/src" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/common/stack/tirtos/inc" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/common/heapmgr" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/services/saddr" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/services/sdata" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/fh" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/inc" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/rom" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/inc/cc13xx" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/low_level/cc13xx" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/tracer" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/mbed-mesh-api/source" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/6LoWPAN/MAC" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/6LoWPAN/Thread" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Security/PANA" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/mdns/fnet/fnet_stack/services/mdns" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/fnv_hash" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/hmac" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/load_balance" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/libNET/src" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack-eventloop/source" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/ti_wisunfan/mbedtls/platform/COMPONENT_PSA_SRV_IMPL" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/whiteboard" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/6LoWPAN/ws" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/DHCPv6_client" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/libDHCPv6"'
	@echo 'Flags (cont-d): -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/utils" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/pan_blacklist" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Common_Protocols" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/posix/ticlang" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/config" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/src" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/src/core" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/src/core/utils" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/examples/platforms" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/examples/ncp_ftd" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/examples/ncp_ftd/platform" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/src/core/thread" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/src/ncp" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/examples/ncp_ftd/platform/nv" -I"C:/Users/a0225881/workspace_v12/uart_echo_LP_MSPM0G3507_freertos_ticlang" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_1_30_00_03/kernel/freertos/Source/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source" -I"C:/ti/mspm0_sdk_1_30_00_03/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/posix/ticlang" -I"C:/Users/a0225881/workspace_v12/freertos_builds_LP_MSPM0G3507_release_ticlang" -DMCU_HOST -DEXCLUDE_TRACE -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"mbed/frameworks/nanostack-libservice/source/nsdynmemtracker/$(basename $(<F)).d_raw" -MT"$(@)" $(GEN_OPTS__FLAG)'
	$(shell echo -march=thumbv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -O2 -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/mbed_port/ti-rf-driver/ti-rf-driver" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/apps/border_router_nanostack_tirf" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/apps/common/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/mbed_config/ws_border_router" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/mbed_port/ti-rf-driver/source" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/mbed_port/mbednanostack2tirtos" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/mbed_port/mbednanostack2tirtos/platform" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/mbed_port/mbedtls2tirtos" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/mbed_port/mbedtls2tirtos/platform" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/mbed_port/mbedtls2tirtos/mbedtls/mbed-crypto" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/nanostack-libservice/mbed-client-libservice" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/nanostack-libservice" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/nanostack-libservice/mbed-client-libservice/platform" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/mbed-client-randlib/mbed-client-randlib/platform" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/mbed-client-randlib/mbed-client-randlib" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/mbed-client-randlib" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/mbed-trace" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/mbed-coap" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/frameworks/mbed-coap/source/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/nanostack" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/mdns" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/mdns/fnet" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/mdns/fnet/fnet_stack" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/mdns/fnet/fnet_stack/stack" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/mdns/fnet/fnet_stack/services/serial" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Core/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/6LoWPAN" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack-eventloop" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack-eventloop/nanostack-event-loop" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack-eventloop/nanostack-event-loop/platform" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/nanostack-hal-mbed-cmsis-rtos" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/mbed-mesh-api/source/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/mbed-mesh-api/mbed-mesh-api" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/mbed-mesh-api" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/coap-service/coap-service" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/coap-service/source/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/ti_wisunfan/mbedtls" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/ti_wisunfan/mbedtls/platform/inc" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/ti_wisunfan/mbedtls/inc" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/ti_wisunfan/mbedtls/platform/COMPONENT_PSA_SRV_IMPL/COMPONENT_NSPE" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/shell" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/config" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/uip" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/uip/conf" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/uip/inc" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/uip/pltfrm/sysbios" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/uip/net" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/services" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/hal/assert" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/hal/appasrt" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/hal/crypto" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/hal/platform" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/hal/rf" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/high_level" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/low_level" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/common/osal_port" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/common" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/common/boards" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/common/util" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/common/inc" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/common/stack/src" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/common/stack/tirtos/inc" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/common/heapmgr" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/services/saddr" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/services/sdata" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/fh" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/inc" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/rom" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/inc/cc13xx" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/low_level/cc13xx" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/wisunfan_mac/tracer" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/mbed-mesh-api/source" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/6LoWPAN/MAC" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/6LoWPAN/Thread" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Security/PANA" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/mdns/fnet/fnet_stack/services/mdns" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/fnv_hash" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/hmac" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/load_balance" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/libNET/src" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack-eventloop/source" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/ti_wisunfan/mbedtls/platform/COMPONENT_PSA_SRV_IMPL" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/whiteboard" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/6LoWPAN/ws" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/DHCPv6_client" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/libDHCPv6" > "mbed/frameworks/nanostack-libservice/source/nsdynmemtracker/$(basename $(<F))_ccsCompiler.opt")
	$(shell echo -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/utils" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Service_Libs/pan_blacklist" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/mbed/nanostack/sal-stack-nanostack/source/Common_Protocols" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/posix/ticlang" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/config" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/src" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/src/core" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/src/core/utils" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/examples/platforms" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/examples/ncp_ftd" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/examples/ncp_ftd/platform" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/src/core/thread" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/src/ncp" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/ti_wisunfan/ncp_interface/examples/ncp_ftd/platform/nv" -I"C:/Users/a0225881/workspace_v12/uart_echo_LP_MSPM0G3507_freertos_ticlang" -I"C:/ti/mspm0_sdk_1_30_00_03/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_1_30_00_03/kernel/freertos/Source/include" -I"C:/ti/mspm0_sdk_1_30_00_03/source" -I"C:/ti/mspm0_sdk_1_30_00_03/kernel/freertos/Source/portable/TI_ARM_CLANG/ARM_CM0" -I"C:/ti/mspm0_sdk_1_30_00_03/source/ti/posix/ticlang" -I"C:/Users/a0225881/workspace_v12/freertos_builds_LP_MSPM0G3507_release_ticlang" -DMCU_HOST -DEXCLUDE_TRACE -D__MSPM0G3507__ -gdwarf-3 -MMD -MP -MF"mbed/frameworks/nanostack-libservice/source/nsdynmemtracker/$(basename $(<F)).d_raw" -MT"$(@)" $(GEN_OPTS__FLAG) >> "mbed/frameworks/nanostack-libservice/source/nsdynmemtracker/$(basename $(<F))_ccsCompiler.opt")
	$(shell echo "$<" >> "mbed/frameworks/nanostack-libservice/source/nsdynmemtracker/$(basename $(<F))_ccsCompiler.opt")
	"C:/ti/ccs1270/ccs/tools/compiler/ti-cgt-armllvm_3.2.1.LTS/bin/tiarmclang.exe" -c @"mbed/frameworks/nanostack-libservice/source/nsdynmemtracker/$(basename $(<F))_ccsCompiler.opt" -o"$@"
	@echo 'Finished building: "$<"'
	@echo ' '


