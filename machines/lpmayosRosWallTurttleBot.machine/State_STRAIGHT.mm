//
//State_STRAIGHT.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "lpmayosRosWallTurttleBot_Includes.h"
#include "lpmayosRosWallTurttleBot.h"

#include "State_STRAIGHT.h"
#include "State_STRAIGHT_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMlpmayosRosWallTurttleBot;
using namespace State;

STRAIGHT::STRAIGHT(const char *name):CLState(name, *new STRAIGHT::OnEntry,*new STRAIGHT::OnExit, *new STRAIGHT::Internal)
{
	_transitions[0] = new Transition_0();	_transitions[1] = new Transition_1();
}

STRAIGHT::~STRAIGHT()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void STRAIGHT::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosWallTurttleBot_VarRefs.mm"
#	include "State_STRAIGHT_VarRefs.mm"
#	include "State_STRAIGHT_OnEntry.mm"
}

void STRAIGHT::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosWallTurttleBot_VarRefs.mm"
#	include "State_STRAIGHT_VarRefs.mm"
#	include "State_STRAIGHT_OnExit.mm"
}

void STRAIGHT::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosWallTurttleBot_VarRefs.mm"
#	include "State_STRAIGHT_VarRefs.mm"
#	include "State_STRAIGHT_Internal.mm"
}

bool STRAIGHT::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosWallTurttleBot_VarRefs.mm"
#	include "State_STRAIGHT_VarRefs.mm"

	return
	(
#			include "State_STRAIGHT_Transition_0.expr"
	);
}
bool STRAIGHT::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosWallTurttleBot_VarRefs.mm"
#	include "State_STRAIGHT_VarRefs.mm"

	return
	(
#			include "State_STRAIGHT_Transition_1.expr"
	);
}


