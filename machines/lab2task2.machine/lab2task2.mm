//
//lab2task2.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "lab2task2_Includes.h"
#include "lab2task2.h"

#include "State_INITIAL.h"
#include "State_MOTOR_ON.h"
#include "State_END.h"
#include "State_TEST.h"
#include "State_BUTTON_ON.h"
#include "State_MOTORS_BACK.h"
#include "State_SPIN.h"

using namespace FSM;
using namespace CLM;
extern "C"
{
	lab2task2 *CLM_Create_lab2task2(int mid, const char *name)
	{
		return new lab2task2(mid, name);
	}
}

lab2task2::lab2task2(int mid, const char *name): CLMachine(mid, name)
{
	_states[0]  = new FSMlab2task2::State:: INITIAL;
	_states[1]  = new FSMlab2task2::State:: MOTOR_ON;
	_states[2]  = new FSMlab2task2::State:: END;
	_states[3]  = new FSMlab2task2::State:: TEST;
	_states[4]  = new FSMlab2task2::State:: BUTTON_ON;
	_states[5]  = new FSMlab2task2::State:: MOTORS_BACK;
	_states[6]  = new FSMlab2task2::State:: SPIN;

	setInitialState(_states[0]);            // set initial state
}

lab2task2::~lab2task2()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
	delete _states[3];
	delete _states[4];
	delete _states[5];
	delete _states[6];
}
