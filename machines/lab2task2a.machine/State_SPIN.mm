//
//State_SPIN.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "lab2task2a_Includes.h"
#include "lab2task2a.h"

#include "State_SPIN.h"
#include "State_SPIN_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMlab2task2a;
using namespace State;

SPIN::SPIN(const char *name):CLState(name, *new SPIN::OnEntry,*new SPIN::OnExit, *new SPIN::Internal)
{
	_transitions[0] = new Transition_0();	_transitions[1] = new Transition_1();
}

SPIN::~SPIN()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void SPIN::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_SPIN_VarRefs.mm"
#	include "State_SPIN_OnEntry.mm"
}

void SPIN::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_SPIN_VarRefs.mm"
#	include "State_SPIN_OnExit.mm"
}

void SPIN::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_SPIN_VarRefs.mm"
#	include "State_SPIN_Internal.mm"
}

bool SPIN::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_SPIN_VarRefs.mm"

	return
	(
#			include "State_SPIN_Transition_0.expr"
	);
}
bool SPIN::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2a_VarRefs.mm"
#	include "State_SPIN_VarRefs.mm"

	return
	(
#			include "State_SPIN_Transition_1.expr"
	);
}


