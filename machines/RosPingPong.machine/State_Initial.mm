//
//State_Initial.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "RosPingPong_Includes.h"
#include "RosPingPong.h"

#include "State_Initial.h"
#include "State_Initial_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMRosPingPong;
using namespace State;

Initial::Initial(const char *name):CLState(name, *new Initial::OnEntry,*new Initial::OnExit, *new Initial::Internal)
{
	_transitions[0] = new Transition_0();
}

Initial::~Initial()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void Initial::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "RosPingPong_VarRefs.mm"
#	include "State_Initial_VarRefs.mm"
#	include "State_Initial_OnEntry.mm"
}

void Initial::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "RosPingPong_VarRefs.mm"
#	include "State_Initial_VarRefs.mm"
#	include "State_Initial_OnExit.mm"
}

void Initial::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "RosPingPong_VarRefs.mm"
#	include "State_Initial_VarRefs.mm"
#	include "State_Initial_Internal.mm"
}

bool Initial::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "RosPingPong_VarRefs.mm"
#	include "State_Initial_VarRefs.mm"

	return
	(
#			include "State_Initial_Transition_0.expr"
	);
}


