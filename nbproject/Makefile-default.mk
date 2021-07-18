#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/interrupt_pic18f4520.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/interrupt_pic18f4520.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=src/main.c src/board/peripheral_controller/peripheral_controller.c src/pic18f4520/fuse/fuse.c src/pic18f4520/gpio/gpio.c src/pic18f4520/interrupt/interrupt.c src/pic18f4520/serial/serial.c src/pic18f4520/timer/timer.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/main.p1 ${OBJECTDIR}/src/board/peripheral_controller/peripheral_controller.p1 ${OBJECTDIR}/src/pic18f4520/fuse/fuse.p1 ${OBJECTDIR}/src/pic18f4520/gpio/gpio.p1 ${OBJECTDIR}/src/pic18f4520/interrupt/interrupt.p1 ${OBJECTDIR}/src/pic18f4520/serial/serial.p1 ${OBJECTDIR}/src/pic18f4520/timer/timer.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/src/main.p1.d ${OBJECTDIR}/src/board/peripheral_controller/peripheral_controller.p1.d ${OBJECTDIR}/src/pic18f4520/fuse/fuse.p1.d ${OBJECTDIR}/src/pic18f4520/gpio/gpio.p1.d ${OBJECTDIR}/src/pic18f4520/interrupt/interrupt.p1.d ${OBJECTDIR}/src/pic18f4520/serial/serial.p1.d ${OBJECTDIR}/src/pic18f4520/timer/timer.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/main.p1 ${OBJECTDIR}/src/board/peripheral_controller/peripheral_controller.p1 ${OBJECTDIR}/src/pic18f4520/fuse/fuse.p1 ${OBJECTDIR}/src/pic18f4520/gpio/gpio.p1 ${OBJECTDIR}/src/pic18f4520/interrupt/interrupt.p1 ${OBJECTDIR}/src/pic18f4520/serial/serial.p1 ${OBJECTDIR}/src/pic18f4520/timer/timer.p1

# Source Files
SOURCEFILES=src/main.c src/board/peripheral_controller/peripheral_controller.c src/pic18f4520/fuse/fuse.c src/pic18f4520/gpio/gpio.c src/pic18f4520/interrupt/interrupt.c src/pic18f4520/serial/serial.c src/pic18f4520/timer/timer.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/interrupt_pic18f4520.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4520
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/main.p1: src/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.p1.d 
	@${RM} ${OBJECTDIR}/src/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/main.p1 src/main.c 
	@-${MV} ${OBJECTDIR}/src/main.d ${OBJECTDIR}/src/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/board/peripheral_controller/peripheral_controller.p1: src/board/peripheral_controller/peripheral_controller.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/board/peripheral_controller" 
	@${RM} ${OBJECTDIR}/src/board/peripheral_controller/peripheral_controller.p1.d 
	@${RM} ${OBJECTDIR}/src/board/peripheral_controller/peripheral_controller.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/board/peripheral_controller/peripheral_controller.p1 src/board/peripheral_controller/peripheral_controller.c 
	@-${MV} ${OBJECTDIR}/src/board/peripheral_controller/peripheral_controller.d ${OBJECTDIR}/src/board/peripheral_controller/peripheral_controller.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/board/peripheral_controller/peripheral_controller.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/pic18f4520/fuse/fuse.p1: src/pic18f4520/fuse/fuse.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/pic18f4520/fuse" 
	@${RM} ${OBJECTDIR}/src/pic18f4520/fuse/fuse.p1.d 
	@${RM} ${OBJECTDIR}/src/pic18f4520/fuse/fuse.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/pic18f4520/fuse/fuse.p1 src/pic18f4520/fuse/fuse.c 
	@-${MV} ${OBJECTDIR}/src/pic18f4520/fuse/fuse.d ${OBJECTDIR}/src/pic18f4520/fuse/fuse.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/pic18f4520/fuse/fuse.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/pic18f4520/gpio/gpio.p1: src/pic18f4520/gpio/gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/pic18f4520/gpio" 
	@${RM} ${OBJECTDIR}/src/pic18f4520/gpio/gpio.p1.d 
	@${RM} ${OBJECTDIR}/src/pic18f4520/gpio/gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/pic18f4520/gpio/gpio.p1 src/pic18f4520/gpio/gpio.c 
	@-${MV} ${OBJECTDIR}/src/pic18f4520/gpio/gpio.d ${OBJECTDIR}/src/pic18f4520/gpio/gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/pic18f4520/gpio/gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/pic18f4520/interrupt/interrupt.p1: src/pic18f4520/interrupt/interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/pic18f4520/interrupt" 
	@${RM} ${OBJECTDIR}/src/pic18f4520/interrupt/interrupt.p1.d 
	@${RM} ${OBJECTDIR}/src/pic18f4520/interrupt/interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/pic18f4520/interrupt/interrupt.p1 src/pic18f4520/interrupt/interrupt.c 
	@-${MV} ${OBJECTDIR}/src/pic18f4520/interrupt/interrupt.d ${OBJECTDIR}/src/pic18f4520/interrupt/interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/pic18f4520/interrupt/interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/pic18f4520/serial/serial.p1: src/pic18f4520/serial/serial.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/pic18f4520/serial" 
	@${RM} ${OBJECTDIR}/src/pic18f4520/serial/serial.p1.d 
	@${RM} ${OBJECTDIR}/src/pic18f4520/serial/serial.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/pic18f4520/serial/serial.p1 src/pic18f4520/serial/serial.c 
	@-${MV} ${OBJECTDIR}/src/pic18f4520/serial/serial.d ${OBJECTDIR}/src/pic18f4520/serial/serial.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/pic18f4520/serial/serial.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/pic18f4520/timer/timer.p1: src/pic18f4520/timer/timer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/pic18f4520/timer" 
	@${RM} ${OBJECTDIR}/src/pic18f4520/timer/timer.p1.d 
	@${RM} ${OBJECTDIR}/src/pic18f4520/timer/timer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/pic18f4520/timer/timer.p1 src/pic18f4520/timer/timer.c 
	@-${MV} ${OBJECTDIR}/src/pic18f4520/timer/timer.d ${OBJECTDIR}/src/pic18f4520/timer/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/pic18f4520/timer/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/src/main.p1: src/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.p1.d 
	@${RM} ${OBJECTDIR}/src/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/main.p1 src/main.c 
	@-${MV} ${OBJECTDIR}/src/main.d ${OBJECTDIR}/src/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/board/peripheral_controller/peripheral_controller.p1: src/board/peripheral_controller/peripheral_controller.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/board/peripheral_controller" 
	@${RM} ${OBJECTDIR}/src/board/peripheral_controller/peripheral_controller.p1.d 
	@${RM} ${OBJECTDIR}/src/board/peripheral_controller/peripheral_controller.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/board/peripheral_controller/peripheral_controller.p1 src/board/peripheral_controller/peripheral_controller.c 
	@-${MV} ${OBJECTDIR}/src/board/peripheral_controller/peripheral_controller.d ${OBJECTDIR}/src/board/peripheral_controller/peripheral_controller.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/board/peripheral_controller/peripheral_controller.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/pic18f4520/fuse/fuse.p1: src/pic18f4520/fuse/fuse.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/pic18f4520/fuse" 
	@${RM} ${OBJECTDIR}/src/pic18f4520/fuse/fuse.p1.d 
	@${RM} ${OBJECTDIR}/src/pic18f4520/fuse/fuse.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/pic18f4520/fuse/fuse.p1 src/pic18f4520/fuse/fuse.c 
	@-${MV} ${OBJECTDIR}/src/pic18f4520/fuse/fuse.d ${OBJECTDIR}/src/pic18f4520/fuse/fuse.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/pic18f4520/fuse/fuse.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/pic18f4520/gpio/gpio.p1: src/pic18f4520/gpio/gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/pic18f4520/gpio" 
	@${RM} ${OBJECTDIR}/src/pic18f4520/gpio/gpio.p1.d 
	@${RM} ${OBJECTDIR}/src/pic18f4520/gpio/gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/pic18f4520/gpio/gpio.p1 src/pic18f4520/gpio/gpio.c 
	@-${MV} ${OBJECTDIR}/src/pic18f4520/gpio/gpio.d ${OBJECTDIR}/src/pic18f4520/gpio/gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/pic18f4520/gpio/gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/pic18f4520/interrupt/interrupt.p1: src/pic18f4520/interrupt/interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/pic18f4520/interrupt" 
	@${RM} ${OBJECTDIR}/src/pic18f4520/interrupt/interrupt.p1.d 
	@${RM} ${OBJECTDIR}/src/pic18f4520/interrupt/interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/pic18f4520/interrupt/interrupt.p1 src/pic18f4520/interrupt/interrupt.c 
	@-${MV} ${OBJECTDIR}/src/pic18f4520/interrupt/interrupt.d ${OBJECTDIR}/src/pic18f4520/interrupt/interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/pic18f4520/interrupt/interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/pic18f4520/serial/serial.p1: src/pic18f4520/serial/serial.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/pic18f4520/serial" 
	@${RM} ${OBJECTDIR}/src/pic18f4520/serial/serial.p1.d 
	@${RM} ${OBJECTDIR}/src/pic18f4520/serial/serial.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/pic18f4520/serial/serial.p1 src/pic18f4520/serial/serial.c 
	@-${MV} ${OBJECTDIR}/src/pic18f4520/serial/serial.d ${OBJECTDIR}/src/pic18f4520/serial/serial.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/pic18f4520/serial/serial.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/pic18f4520/timer/timer.p1: src/pic18f4520/timer/timer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/pic18f4520/timer" 
	@${RM} ${OBJECTDIR}/src/pic18f4520/timer/timer.p1.d 
	@${RM} ${OBJECTDIR}/src/pic18f4520/timer/timer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/pic18f4520/timer/timer.p1 src/pic18f4520/timer/timer.c 
	@-${MV} ${OBJECTDIR}/src/pic18f4520/timer/timer.d ${OBJECTDIR}/src/pic18f4520/timer/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/pic18f4520/timer/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/interrupt_pic18f4520.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/interrupt_pic18f4520.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/interrupt_pic18f4520.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/interrupt_pic18f4520.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/interrupt_pic18f4520.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/interrupt_pic18f4520.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/interrupt_pic18f4520.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
