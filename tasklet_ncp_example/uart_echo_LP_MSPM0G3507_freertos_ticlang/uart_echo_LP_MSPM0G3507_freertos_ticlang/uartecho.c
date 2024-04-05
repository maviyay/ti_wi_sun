/*
 * Copyright (c) 2021, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/*
 *  ======== UARTecho.c ========
 */
#include <stddef.h>
#include <stdint.h>

/* RTOS header files */
#include <FreeRTOS.h>
#include <task.h>

#include "ti_drivers_config.h"

#include "otsupport/otrtosapi.h"
#include "openthread/ncp.h"
#include "platform/system.h"

#include "net_interface.h"
#include "lib/spinel/spinel.h"

#include "mesh_system.h"
#include "eventOS_event.h"
#include "eventOS_event_timer.h"

/* Defines */
#define GET_NWP_PROP 0
#define SET_NWP_PROP 1

/* Global vars */
int8_t ncp_tasklet_id = -1;
otInstance *OtStack_instance = NULL;

/* External function */
extern void platformNcpSendProcess();
extern void platformNcpPrepCmdProcess(uint8_t commandType, spinel_prop_key_t commandProp, void* newValue);

/* Function Prototypes */
void ncp_tasklet(arm_event_s *event);
void platformNcpPrepSetCmdSignal(spinel_prop_key_t COMMAND_PROP, void* newValue);
void platformNcpSendCmdSignal();

/*!
 * Signal NCP tasklet with the event NCP_PREP_CMD_EVENT,
 * with event_id = GET_NWP_PROP, event_data = command property,
 * and data_ptr = new value to set. This function allows NCP_tasklet
 * to process the prepping of a set command to send to the NWP.
 */
void platformNcpPrepSetCmdSignal(spinel_prop_key_t COMMAND_PROP, void* newValue)
{
    //post an event to ncp_tasklet
    arm_event_s event = {
           .sender = 0,
           .receiver = ncp_tasklet_id,
           .priority = ARM_LIB_HIGH_PRIORITY_EVENT,
           .event_type = NCP_PREP_CMD_EVENT,
           .event_id = SET_NWP_PROP,
           .event_data = COMMAND_PROP,
           .data_ptr = newValue
       };

   eventOS_event_send(&event);
}

/*!
 * Signal NCP tasklet with the event NCP_SEND_CMD_EVENT,
 * which actually sends out the prepped commands to the NWP.
 */
void platformNcpSendCmdSignal()
{
    //post an event to ncp_tasklet
    arm_event_s event = {
           .sender = 0,
           .receiver = ncp_tasklet_id,
           .priority = ARM_LIB_HIGH_PRIORITY_EVENT,
           .event_type = NCP_SEND_CMD_EVENT,
           .event_id = 0,
           .event_data = 0
       };

   eventOS_event_send(&event);
}

void platformNcpSendAsyncRspSignal()
{
    //post an event to ncp_tasklet
    arm_event_s event = {
           .sender = 0,
           .receiver = ncp_tasklet_id,
           .priority = ARM_LIB_HIGH_PRIORITY_EVENT,
           .event_type = NCP_SEND_ASYNC_RSPONSE_EVENT,
           .event_id = 0,
           .event_data = 0
       };

   eventOS_event_send(&event);
}

void platformUartSignal(uintptr_t arg)
{
    //post an event to ncp_tasklet
    arm_event_s event = {
           .sender = 0,
           .receiver = ncp_tasklet_id,
           .priority = ARM_LIB_HIGH_PRIORITY_EVENT,
           .event_type = NCP_UART_EVENT,
           .event_id = 0,
           .event_data = arg
       };

   eventOS_event_send(&event);
}

/*
 *  ======== mainThread ========
 */
void mainThread(void *arg0)
{
    bool up = 1;
    mesh_system_init();
    eventOS_event_handler_create(
    &ncp_tasklet,
    ARM_LIB_TASKLET_INIT_EVENT);

    platformNcpPrepSetCmdSignal(SPINEL_PROP_NET_IF_UP, (void*) &up);
    platformNcpPrepSetCmdSignal(SPINEL_PROP_NET_STACK_UP, (void*) &up);
}

void ncp_tasklet(arm_event_s *event)
{
    arm_library_event_type_e event_type;
    event_type = (arm_library_event_type_e)event->event_type;
    switch (event_type)
    {
        case ARM_LIB_TASKLET_INIT_EVENT:
            ncp_tasklet_id = event->receiver;
            OtStack_instance = otInstanceInitSingle();
//            assert(OtStack_instance);
            otNcpInit(OtStack_instance);

//            GPIO_write(CONFIG_GPIO_RLED, 1);

            for(int i = 0; i< 3; i++)
            {
//                GPIO_toggle(CONFIG_GPIO_GLED);
//                usleep(300000);
            }
            break;
#ifdef MCU_HOST
        case NCP_SEND_CMD_EVENT:
            platformNcpSendProcess();
            break;
        case NCP_PREP_CMD_EVENT:
            platformNcpPrepCmdProcess(event->event_id, (spinel_prop_key_t)event->event_data, event->data_ptr);
            break;
#endif
        case NCP_UART_EVENT:
            platformUartProcess(event->event_data);
            break;
        case NCP_SEND_RESPONSE_EVENT:
            platformNcpSendProcess();
            break;
        default:
            break;
    }
}
