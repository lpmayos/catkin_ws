//
//lab2task2b.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "lab2task2b_Includes.h"
#include "lab2task2b.h"

#include "State_INITIAL.h"
#include "State_END.h"
#include "State_TEST.h"

using namespace FSM;
using namespace CLM;
extern "C"
{
	lab2task2b *CLM_Create_lab2task2b(int mid, const char *name)
	{
		return new lab2task2b(mid, name);
	}
}

lab2task2b::lab2task2b(int mid, const char *name): CLMachine(mid, name)
{
	_states[0]  = new FSMlab2task2b::State:: INITIAL;
	_states[1]  = new FSMlab2task2b::State:: END;
	_states[2]  = new FSMlab2task2b::State:: TEST;

	setInitialState(_states[0]);            // set initial state
}

lab2task2b::~lab2task2b()
{
	delete _states[0];
	delete _states[1];
	delete _states[2];
}
