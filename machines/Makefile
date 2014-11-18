#
#	$Id: 516f86fc20f89df97e8bd881068a091451f7e4fb $
#
# A makefile for compiling clfsm state machines
#
MACHINES=RosPingPong RosBlindTurttleBot RosWallTurttleBot motorTest lpmayosRosPingPong lpmayosRosBlindTurttleBot lpmayosRosWallTurttleBot

CLFSM_CXX_ONLY=yes
MKDIR=mkdir -p
LDCXX?=${CXX}
ROS_CONVERTED_ICLD=../devel/include
SAY=echo
LN?=ln
E?=@

SOEXT?=.so

.if !defined(_FSM_MK)
_FSM_MK=1

SOPREFIX=#empty
SKIP_COMPILING_WHITEBOARD=#defined
SKIP_COMPILING_GU_UTIL=#defined

.if !defined(FSM_USE_ARC) && !defined(USE_ARC)
NO_OBJC_ARC= # turn off ARC
.endif

ROS_LIB=${ROS_ROOT}/../../lib

.ifdef TARGET
CLFSM_WFLAGS?=-Werror -Wall -Wno-unknown-pragmas -Wno-padded -Wno-unused-variable
.ifdef GEODE_BUILD
CLFSM_CXX_ONLY?=yes
.else
CLFSM_CFLAGS?=
.endif
CLFSM_LDFLAGS?=-L/usr/local/lib -Wl,-R /usr/local/lib -L../devel/lib -L${ROS_LIB} -shared
.else
CLFSM_WFLAGS=-Wall -Wno-unknown-pragmas -Wno-padded -Wno-unused-variable -Wno-non-virtual-dtor -Wno-c++11-compat-deprecated-writable-strings
CLFSM_LDFLAGS?=-L/usr/local/lib -Wl,-rpath /usr/local/lib -L../devel/lib  -L${ROS_LIB} -shared 
.endif

CLFSM_CXX_ONLY?=no

.if ${CLFSM_CXX_ONLY:M[yY][eE][sS]}
CLFSM_CFLAGS?=-x c++ -fPIC
CLFSM_LIBS?=-lroscpp -lboost_signals -lboost_filesystem -lrosconsole -lrosconsole_log4cxx -lrosconsole_backend_interface -llog4cxx -lboost_regex -lxmlrpcpp -lroscpp_serialization -lrostime -lboost_date_time -lboost_system -lboost_thread -lpthread -lcpp_common -lconsole_bridge -lclfsm
.else
CLFSM_CFLAGS?=-fPIC
CLFSM_LIBS?=-lroscpp -lboost_signals -lboost_filesystem -lrosconsole -lrosconsole_log4cxx -lrosconsole_backend_interface -llog4cxx -lboost_regex -lxmlrpcpp -lroscpp_serialization -lrostime -lboost_date_time -lboost_system -lboost_thread -lpthread -lcpp_common -lconsole_bridge -lclfsm -lobjc
.endif

SPECIFIC_LIBS+=${CLFSM_LIBS}

LIBCLFSM_DIR?=../src/libclfsm/include
CLFSM_DIR?=../src/clfsm/include

UNAME_S!=uname -s
UNAME_M!=uname -m

all: all-real				# make sure all is the first target

clean: clean-machines

clean-machines: ${MACHINES:=-clean}

.for machine in ${MACHINES}
MACHINE_DIRS+=${machine}.machine
${machine}_dir=${machine}.machine 
${machine}_bdir=${machine}.machine/${UNAME_S}-${UNAME_M}
${machine}_cppflags=-I${${machine}_dir} -I${CLFSM_DIR:Q} -I${LIBCLFSM_DIR:Q} -I${ROS_CONVERTED_ICLD}
${machine}_hfiles!=cd ${${machine}_dir} && echo *.h
${machine}_sfiles=${machine}.mm
${machine}_states!=cat ${${machine}_dir}/States

.  for state in ${${machine}_states}
${machine}_sfiles+=State_${state}.mm
.  endfor


${${machine}_bdir}: ${${machine}_dir}
	$E${MKDIR} ${${machine}_bdir}

.  for src in ${${machine}_sfiles}
.  endfor

.  for hdr in ${${machine}_hfiles}
${machine}_hdrs+=${${machine}_dir}/${hdr}
.  endfor

FSM_HDRS+=${${machine}_hdrs}

.  for src in ${${machine}_sfiles}
FSM_SRCS+=${${machine}_bdir}/${src}
${machine}_objs+=${${machine}_bdir}/${src:.mm=.o}
${${machine}_bdir}/${src:.mm=.o}: ${${machine}_dir}/${src} ${${machine}_hdrs}
	${SAY} "compiling OC++ ${src} (${machine})"
	$E${CXX} ${${machine}_cppflags} ${CPPFLAGS} ${CFLAGS} ${CLFSM_CFLAGS} \
		${CXXLANGFL} ${CLFSM_WFLAGS} 				\
		-c -o ${${machine}_bdir}/${src:.mm=.o} ${${machine}_dir}/${src}
.  endfor
${machine}_outfile=${machine}
${machine}_outfile_LOCAL=${SOPREFIX}${${machine}_outfile}${SOEXT}
${machine}_out=${${machine}_outfile${LOCAL}}
${machine}_outpath=${${machine}_bdir}/${${machine}_out}

${${machine}_bdir}/${${machine}_out}: ${${machine}_bdir} ${${machine}_objs}
	${SAY} "linking output ${${machine}_outpath}"
	$E${LDCXX} ${SPECIFIC_OFLAGS} ${CLFSM_LDFLAGS} -o ${${machine}_outpath} ${LDFLAGS} ${${machine}_objs} ${LIBS} ${SPECIFIC_LIBS}
	$E[ -e ${${machine}_outpath}.so ] ||       \
        ${LN} -f ${${machine}_outpath} ${${machine}_outpath}.so
.ifdef LINK_FIXUP${TARGET}
        echo $E${LINK_FIXUP${TARGET}}
.endif

.ifndef SKIP_FSM
SRCS+=${FSM_SRCS}
ALL_HDRS+=${FSM_HDRS}
.endif

.ifdef CATKIN_COMPILE_FSMS
CATKIN_SRCS+=${FSM_SRCS}
CATKIN_HDRS+=${FSM_HDRS}
.endif 

all-real: ${${machine}_outpath}

.ifndef WANT_OUTPATH_FOR_FSMS
OUTPATH:=
.endif

${machine:=-clean}:
	-${RM} -rf ${${machine}_bdir}
	-${RM} -rf ${${machine}_dir}/${TARGET_UNAME_S}-${TARGET_UNAME_M}

.endfor

.endif
