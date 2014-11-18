//
//lpmayosRosBlindTurttleBot.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "lpmayosRosBlindTurttleBot_Includes.h"
#include "lpmayosRosBlindTurttleBot.h"

#include "State_INITIAL.h"
#include "State_STRAIGHT.h"
#include "State_TURN_RIGHT.h"
#include "State_END.h"

using namespace FSM;
using namespace CLM;
extern "C"
{
	lpmayosRosBlindTurttleBot *CLM_Create_lpmayosRosBlindTurttleBot(int mid, const char *name)
	{
		return new lpmayosRosBlindTurttleBot(mid, name);
	}
}

lpmayosRosBlindTurttleBot::lpmayosRosBlindTurttleBot(int mid, const char *name): CLMachine(mid, name)
{
	_states[0]  = new FSMlpmayosRosBlindTurttleBot::State:: INITIAL;
	_states[1]  = new FSMlpmayosRosBlindTurttleBot::State:: STRAIGHT;
	_states[2]  = new FSMlpmayosRosBlindTurttleBot::State:: TURN_RIGHT;
	_states[3]  = new FSMlpmayosRosBlindTurttleBot::State:: END;

	setInitialState(_states[0]);            // set initial state
}

lpmayosRosBlindTurttleBot::~lpmayosRosBlindTurttleBot()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
}
