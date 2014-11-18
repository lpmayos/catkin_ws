//
//State_BACK.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "lpmayosRosWallTurttleBot_Includes.h"
#include "lpmayosRosWallTurttleBot.h"

#include "State_BACK.h"
#include "State_BACK_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMlpmayosRosWallTurttleBot;
using namespace State;

BACK::BACK(const char *name):CLState(name, *new BACK::OnEntry,*new BACK::OnExit, *new BACK::Internal)
{
	_transitions[0] = new Transition_0();	_transitions[1] = new Transition_1();
}

BACK::~BACK()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void BACK::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosWallTurttleBot_VarRefs.mm"
#	include "State_BACK_VarRefs.mm"
#	include "State_BACK_OnEntry.mm"
}

void BACK::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosWallTurttleBot_VarRefs.mm"
#	include "State_BACK_VarRefs.mm"
#	include "State_BACK_OnExit.mm"
}

void BACK::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosWallTurttleBot_VarRefs.mm"
#	include "State_BACK_VarRefs.mm"
#	include "State_BACK_Internal.mm"
}

bool BACK::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosWallTurttleBot_VarRefs.mm"
#	include "State_BACK_VarRefs.mm"

	return
	(
#			include "State_BACK_Transition_0.expr"
	);
}
bool BACK::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosWallTurttleBot_VarRefs.mm"
#	include "State_BACK_VarRefs.mm"

	return
	(
#			include "State_BACK_Transition_1.expr"
	);
}


