//
//State_MOTORS_BACK.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "lab2task2a_Includes.h"
#include "lab2task2a.h"

#include "State_MOTORS_BACK.h"
#include "State_MOTORS_BACK_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMlab2task2a;
using namespace State;

MOTORS_BACK::MOTORS_BACK(const char *name):CLState(name, *new MOTORS_BACK::OnEntry,*new MOTORS_BACK::OnExit, *new MOTORS_BACK::Internal)
{
	_transitions[0] = new Transition_0();
}

MOTORS_BACK::~MOTORS_BACK()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void MOTORS_BACK::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_MOTORS_BACK_VarRefs.mm"
#	include "State_MOTORS_BACK_OnEntry.mm"
}

void MOTORS_BACK::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_MOTORS_BACK_VarRefs.mm"
#	include "State_MOTORS_BACK_OnExit.mm"
}

void MOTORS_BACK::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_MOTORS_BACK_VarRefs.mm"
#	include "State_MOTORS_BACK_Internal.mm"
}

bool MOTORS_BACK::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_MOTORS_BACK_VarRefs.mm"

	return
	(
#			include "State_MOTORS_BACK_Transition_0.expr"
	);
}


