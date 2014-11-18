//
//lpmayosRosWallTurttleBot.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "lpmayosRosWallTurttleBot_Includes.h"
#include "lpmayosRosWallTurttleBot.h"

#include "State_INITIAL.h"
#include "State_STRAIGHT.h"
#include "State_TURN_RIGHT.h"
#include "State_END.h"
#include "State_STOP.h"
#include "State_BACK.h"
#include "State_TEST.h"

using namespace FSM;
using namespace CLM;
extern "C"
{
	lpmayosRosWallTurttleBot *CLM_Create_lpmayosRosWallTurttleBot(int mid, const char *name)
	{
		return new lpmayosRosWallTurttleBot(mid, name);
	}
}

lpmayosRosWallTurttleBot::lpmayosRosWallTurttleBot(int mid, const char *name): CLMachine(mid, name)
{
	_states[0]  = new FSMlpmayosRosWallTurttleBot::State:: INITIAL;
	_states[1]  = new FSMlpmayosRosWallTurttleBot::State:: STRAIGHT;
	_states[2]  = new FSMlpmayosRosWallTurttleBot::State:: TURN_RIGHT;
	_states[3]  = new FSMlpmayosRosWallTurttleBot::State:: END;
	_states[4]  = new FSMlpmayosRosWallTurttleBot::State:: STOP;
	_states[5]  = new FSMlpmayosRosWallTurttleBot::State:: BACK;
	_states[6]  = new FSMlpmayosRosWallTurttleBot::State:: TEST;

	setInitialState(_states[0]);            // set initial state
}

lpmayosRosWallTurttleBot::~lpmayosRosWallTurttleBot()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
	delete _states[4];
	delete _states[5];
	delete _states[6];
}
