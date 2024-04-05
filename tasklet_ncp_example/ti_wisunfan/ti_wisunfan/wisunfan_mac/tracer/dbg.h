/******************************************************************************

 @file  dbg.h

 @brief Provides data logging

 Group: WCS, LPC
 Target Device: cc13xx_cc26xx

 ******************************************************************************
 
 Copyright (c) 2011-2024, Texas Instruments Incorporated

 All rights reserved not granted herein.
 Limited License.

 Texas Instruments Incorporated grants a world-wide, royalty-free,
 non-exclusive license under copyrights and patents it now or hereafter
 owns or controls to make, have made, use, import, offer to sell and sell
 ("Utilize") this software subject to the terms herein. With respect to the
 foregoing patent license, such license is granted solely to the extent that
 any such patent is necessary to Utilize the software alone. The patent
 license shall not apply to any combinations which include this software,
 other than combinations with devices manufactured by or for TI ("TI
 Devices"). No hardware patent is licensed hereunder.

 Redistributions must preserve existing copyright notices and reproduce
 this license (including the above copyright notice and the disclaimer and
 (if applicable) source code license limitations below) in the documentation
 and/or other materials provided with the distribution.

 Redistribution and use in binary form, without modification, are permitted
 provided that the following conditions are met:

   * No reverse engineering, decompilation, or disassembly of this software
     is permitted with respect to any software provided in binary form.
   * Any redistribution and use are licensed by TI for use only with TI Devices.
   * Nothing shall obligate TI to provide you with source code for the software
     licensed and provided to you in object code.

 If software source code is provided to you, modification and redistribution
 of the source code are permitted provided that the following conditions are
 met:

   * Any redistribution and use of the source code, including any resulting
     derivative works, are licensed by TI for use only with TI Devices.
   * Any redistribution and use of any object code compiled from the source
     code and any resulting derivative works, are licensed by TI for use
     only with TI Devices.

 Neither the name of Texas Instruments Incorporated nor the names of its
 suppliers may be used to endorse or promote products derived from this
 software without specific prior written permission.

 DISCLAIMER.

 THIS SOFTWARE IS PROVIDED BY TI AND TI'S LICENSORS "AS IS" AND ANY EXPRESS
 OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 IN NO EVENT SHALL TI AND TI'S LICENSORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
 OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

 ******************************************************************************
 
 
 *****************************************************************************/

#ifndef _DBG_H
#define _DBG_H

#if defined(USE_ITM_DBG)
/**
 *
 * The tracer module enables ITM via a high speed single wire output.
 */
#include "itm.h"
#elif defined(USE_TIRTOS_DBG)
#include <stdint.h>
#include <xdc/runtime/Log.h>
#endif //USE_ITM_DBG

#define MAC_DBG_CH  0
#define APP_DBG_CH  1
#define DBGSYS      MAC_DBG_CH

#if USE_TIRTOS_DBG
/// Emulates DBG_PRINT with no arguments, but sends an ID instead of the format string
#define DBG_PRINT0(ch, str) \
   (void) ch; \
   Log_info0(str);

/// Emulates DBG_PRINT with 1 numeric argument (16-bit)
#define DBG_PRINT1(ch, str, a0) \
        (void) ch; \
        Log_info1(str, a0);

/// Emulates DBG_PRINT with 2 numeric arguments (16-bit)
#define DBG_PRINT2(ch, str, a0, a1) \
        (void) ch; \
        Log_info2(str, a0, a1);

/// Emulates DBG_PRINT with 3 numeric arguments (16-bit)
#define DBG_PRINT3(ch, str, a0, a1, a2) \
        (void) ch; \
        Log_info3(str, a0, a1, a2);

/// Emulates DBG_PRINT with 4 numeric arguments (16-bit)
#define DBG_PRINT4(ch, str, a0, a1, a2, a3) \
        (void) ch; \
        Log_info4(str, a0, a1, a2, a3);

/// Emulates DBG_PRINT with 1 long numeric argument (32-bit)
#define DBG_PRINTL1(ch, str, a0) \
        (void) ch; \
        Log_info1(str, a0);

/// Emulates DBG_PRINT with 2 long numeric arguments (32-bit)
#define DBG_PRINTL2(ch, str, a0, a1) \
        (void) ch; \
        Log_info2(str, a0, a1);

#elif defined(USE_ITM_DBG)
/// Emulates DBG_PRINT with no arguments, but sends an ID instead of the format string
#define DBG_PRINT0(ch, str) \
  {  \
      ITM_putStringBlocking(str, ch); \
      ITM_putNewLineBlocking(ch); \
  }

/// Emulates DBG_PRINT with 1 numeric argument (16-bit)
#define DBG_PRINT1(ch, str, a0) \
    { \
      ITM_putStringBlocking(str, ch); \
      ITM_putStringBlocking(" ,", ch); \
      ITM_putValueBlocking(a0, ch); \
      ITM_putNewLineBlocking(ch); \
    }

/// Emulates DBG_PRINT with 2 numeric arguments (16-bit)
#define DBG_PRINT2(ch, str, a0, a1) \
    { \
      ITM_putStringBlocking(str, ch); \
      ITM_putStringBlocking(", ", ch); \
      ITM_putValueBlocking(a0, ch); \
      ITM_putStringBlocking(", ", ch); \
      ITM_putValueBlocking(a1, ch); \
      ITM_putNewLineBlocking(ch); \
    }

/// Emulates DBG_PRINT with 3 numeric arguments (16-bit)
#define DBG_PRINT3(ch, str, a0, a1, a2) \
    { \
      ITM_putStringBlocking(str, ch); \
      ITM_putStringBlocking(", ", ch); \
      ITM_putValueBlocking(a0, ch); \
      ITM_putStringBlocking(", ", ch); \
      ITM_putValueBlocking(a1, ch); \
      ITM_putStringBlocking(", ", ch); \
      ITM_putValueBlocking(a2, ch); \
      ITM_putNewLineBlocking(ch); \
    }

/// Emulates DBG_PRINT with 4 numeric arguments (16-bit)
#define DBG_PRINT4(ch, str, a0, a1, a2, a3) \
    { \
      ITM_putStringBlocking(str, ch); \
      ITM_putStringBlocking(", ", ch); \
      ITM_putValueBlocking(a0, ch); \
      ITM_putStringBlocking(", ", ch); \
      ITM_putValueBlocking(a1, ch); \
      ITM_putStringBlocking(", ", ch); \
      ITM_putValueBlocking(a2, ch); \
      ITM_putNewLineBlocking(ch); \
    }

/// Emulates DBG_PRINT with 1 long numeric argument (32-bit)
#define DBG_PRINTL1(ch, str, a0) \
    { \
      ITM_putStringBlocking(str, ch); \
      ITM_putStringBlocking(", ", ch); \
      ITM_putValueBlocking(a0, ch); \
      ITM_putNewLineBlocking(ch); \
    }

/// Emulates DBG_PRINT with 2 long numeric arguments (32-bit)
#define DBG_PRINTL2(ch, str, a0, a1) \
    { \
      ITM_putStringBlocking(str, ch); \
      ITM_putStringBlocking(", ", ch); \
      ITM_putValueBlocking(a0, ch); \
      ITM_putStringBlocking(", ", ch); \
      ITM_putValueBlocking(a1, ch); \
      ITM_putNewLineBlocking(ch); \
    }

#else
/// Emulates DBG_PRINT with no arguments, but sends an ID instead of the format string
#define DBG_PRINT0(ch, str)
/// Emulates DBG_PRINT with 1 numeric argument (16-bit)
#define DBG_PRINT1(ch, str, a0)
/// Emulates DBG_PRINT with 2 numeric arguments (16-bit)
#define DBG_PRINT2(ch, str, a0, a1)
/// Emulates DBG_PRINT with 3 numeric arguments (16-bit)
#define DBG_PRINT3(ch, str, a0, a1, a2)
/// Emulates DBG_PRINT with 4 numeric arguments (16-bit)
#define DBG_PRINT4(ch, str, a0, a1, a2, a3)
/// Emulates DBG_PRINT with 1 long numeric argument (32-bit)
#define DBG_PRINTL1(ch, str, a0)
/// Emulates DBG_PRINT with 2 long numeric arguments (32-bit)
#define DBG_PRINTL2(ch, str, a0, a1)

#endif //#if USE_TIRTOS_DBG || USE_ITM_DEBUG

//@}
//-------------------------------------------------------------------------------------------------------




#endif
//@}
