//
//lpmayosRosPingPong.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "lpmayosRosPingPong_Includes.h"
#include "lpmayosRosPingPong.h"

#include "State_INITIAL.h"
#include "State_PUBLISH.h"
#include "State_WAIT_AND_COUNT.h"
#include "State_END.h"

using namespace FSM;
using namespace CLM;
extern "C"
{
	lpmayosRosPingPong *CLM_Create_lpmayosRosPingPong(int mid, const char *name)
	{
		return new lpmayosRosPingPong(mid, name);
	}
}

lpmayosRosPingPong::lpmayosRosPingPong(int mid, const char *name): CLMachine(mid, name)
{
	_states[0]  = new FSMlpmayosRosPingPong::State:: INITIAL;
	_states[1]  = new FSMlpmayosRosPingPong::State:: PUBLISH;
	_states[2]  = new FSMlpmayosRosPingPong::State:: WAIT_AND_COUNT;
	_states[3]  = new FSMlpmayosRosPingPong::State:: END;

	setInitialState(_states[0]);            // set initial state
}

lpmayosRosPingPong::~lpmayosRosPingPong()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
}
