//
//State_PUBLISH.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "lpmayosRosPingPong_Includes.h"
#include "lpmayosRosPingPong.h"

#include "State_PUBLISH.h"
#include "State_PUBLISH_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMlpmayosRosPingPong;
using namespace State;

PUBLISH::PUBLISH(const char *name):CLState(name, *new PUBLISH::OnEntry,*new PUBLISH::OnExit, *new PUBLISH::Internal)
{
	_transitions[0] = new Transition_0();	_transitions[1] = new Transition_1();
}

PUBLISH::~PUBLISH()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void PUBLISH::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosPingPong_VarRefs.mm"
#	include "State_PUBLISH_VarRefs.mm"
#	include "State_PUBLISH_OnEntry.mm"
}

void PUBLISH::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosPingPong_VarRefs.mm"
#	include "State_PUBLISH_VarRefs.mm"
#	include "State_PUBLISH_OnExit.mm"
}

void PUBLISH::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosPingPong_VarRefs.mm"
#	include "State_PUBLISH_VarRefs.mm"
#	include "State_PUBLISH_Internal.mm"
}

bool PUBLISH::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosPingPong_VarRefs.mm"
#	include "State_PUBLISH_VarRefs.mm"

	return
	(
#			include "State_PUBLISH_Transition_0.expr"
	);
}
bool PUBLISH::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "lpmayosRosPingPong_VarRefs.mm"
#	include "State_PUBLISH_VarRefs.mm"

	return
	(
#			include "State_PUBLISH_Transition_1.expr"
	);
}


