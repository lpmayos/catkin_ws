//
//State_STOP.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "lpmayosRosWallTurttleBot_Includes.h"
#include "lpmayosRosWallTurttleBot.h"

#include "State_STOP.h"
#include "State_STOP_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMlpmayosRosWallTurttleBot;
using namespace State;

STOP::STOP(const char *name):CLState(name, *new STOP::OnEntry,*new STOP::OnExit, *new STOP::Internal)
{
	_transitions[0] = new Transition_0();	_transitions[1] = new Transition_1();
}

STOP::~STOP()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void STOP::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosWallTurttleBot_VarRefs.mm"
#	include "State_STOP_VarRefs.mm"
#	include "State_STOP_OnEntry.mm"
}

void STOP::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosWallTurttleBot_VarRefs.mm"
#	include "State_STOP_VarRefs.mm"
#	include "State_STOP_OnExit.mm"
}

void STOP::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosWallTurttleBot_VarRefs.mm"
#	include "State_STOP_VarRefs.mm"
#	include "State_STOP_Internal.mm"
}

bool STOP::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosWallTurttleBot_VarRefs.mm"
#	include "State_STOP_VarRefs.mm"

	return
	(
#			include "State_STOP_Transition_0.expr"
	);
}
bool STOP::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosWallTurttleBot_VarRefs.mm"
#	include "State_STOP_VarRefs.mm"

	return
	(
#			include "State_STOP_Transition_1.expr"
	);
}


