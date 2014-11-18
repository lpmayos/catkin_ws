//
//State_MOTORS_BACKWARD.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "lab2task2a_Includes.h"
#include "lab2task2a.h"

#include "State_MOTORS_BACKWARD.h"
#include "State_MOTORS_BACKWARD_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMlab2task2a;
using namespace State;

MOTORS_BACKWARD::MOTORS_BACKWARD(const char *name):CLState(name, *new MOTORS_BACKWARD::OnEntry,*new MOTORS_BACKWARD::OnExit, *new MOTORS_BACKWARD::Internal)
{
	_transitions[0] = new Transition_0();	_transitions[1] = new Transition_1();	_transitions[2] = new Transition_2();	_transitions[3] = new Transition_3();	_transitions[4] = new Transition_4();
}

MOTORS_BACKWARD::~MOTORS_BACKWARD()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void MOTORS_BACKWARD::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_MOTORS_BACKWARD_VarRefs.mm"
#	include "State_MOTORS_BACKWARD_OnEntry.mm"
}

void MOTORS_BACKWARD::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_MOTORS_BACKWARD_VarRefs.mm"
#	include "State_MOTORS_BACKWARD_OnExit.mm"
}

void MOTORS_BACKWARD::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_MOTORS_BACKWARD_VarRefs.mm"
#	include "State_MOTORS_BACKWARD_Internal.mm"
}

bool MOTORS_BACKWARD::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_MOTORS_BACKWARD_VarRefs.mm"

	return
	(
#			include "State_MOTORS_BACKWARD_Transition_0.expr"
	);
}
bool MOTORS_BACKWARD::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_MOTORS_BACKWARD_VarRefs.mm"

	return
	(
#			include "State_MOTORS_BACKWARD_Transition_1.expr"
	);
}
bool MOTORS_BACKWARD::Transition_2::check(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_MOTORS_BACKWARD_VarRefs.mm"

	return
	(
#			include "State_MOTORS_BACKWARD_Transition_2.expr"
	);
}
bool MOTORS_BACKWARD::Transition_3::check(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_MOTORS_BACKWARD_VarRefs.mm"

	return
	(
#			include "State_MOTORS_BACKWARD_Transition_3.expr"
	);
}
bool MOTORS_BACKWARD::Transition_4::check(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_MOTORS_BACKWARD_VarRefs.mm"

	return
	(
#			include "State_MOTORS_BACKWARD_Transition_4.expr"
	);
}


