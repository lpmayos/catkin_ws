//
//State_MOTORS_FORWARD.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "lab2task2a_Includes.h"
#include "lab2task2a.h"

#include "State_MOTORS_FORWARD.h"
#include "State_MOTORS_FORWARD_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMlab2task2a;
using namespace State;

MOTORS_FORWARD::MOTORS_FORWARD(const char *name):CLState(name, *new MOTORS_FORWARD::OnEntry,*new MOTORS_FORWARD::OnExit, *new MOTORS_FORWARD::Internal)
{
	_transitions[0] = new Transition_0();
}

MOTORS_FORWARD::~MOTORS_FORWARD()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void MOTORS_FORWARD::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_MOTORS_FORWARD_VarRefs.mm"
#	include "State_MOTORS_FORWARD_OnEntry.mm"
}

void MOTORS_FORWARD::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_MOTORS_FORWARD_VarRefs.mm"
#	include "State_MOTORS_FORWARD_OnExit.mm"
}

void MOTORS_FORWARD::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_MOTORS_FORWARD_VarRefs.mm"
#	include "State_MOTORS_FORWARD_Internal.mm"
}

bool MOTORS_FORWARD::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_MOTORS_FORWARD_VarRefs.mm"

	return
	(
#			include "State_MOTORS_FORWARD_Transition_0.expr"
	);
}


