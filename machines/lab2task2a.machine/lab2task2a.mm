//
//lab2task2a.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "lab2task2a_Includes.h"
#include "lab2task2a.h"

#include "State_INITIAL.h"
#include "State_END.h"
#include "State_MOTORS_FORWARD.h"
#include "State_MOTORS_BACKWARD.h"
#include "State_TURN_LEFT.h"
#include "State_TURN_RIGHT.h"
#include "State_TEST.h"

using namespace FSM;
using namespace CLM;
extern "C"
{
	lab2task2a *CLM_Create_lab2task2a(int mid, const char *name)
	{
		return new lab2task2a(mid, name);
	}
}

lab2task2a::lab2task2a(int mid, const char *name): CLMachine(mid, name)
{
	_states[0]  = new FSMlab2task2a::State:: INITIAL;
	_states[1]  = new FSMlab2task2a::State:: END;
	_states[2]  = new FSMlab2task2a::State:: MOTORS_FORWARD;
	_states[3]  = new FSMlab2task2a::State:: MOTORS_BACKWARD;
	_states[4]  = new FSMlab2task2a::State:: TURN_LEFT;
	_states[5]  = new FSMlab2task2a::State:: TURN_RIGHT;
	_states[6]  = new FSMlab2task2a::State:: TEST;

	setInitialState(_states[0]);            // set initial state
}

lab2task2a::~lab2task2a()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
	delete _states[4];
	delete _states[5];
	delete _states[6];
}
