//
//State_TEST.mm
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#include "lab2task2b_Includes.h"
#include "lab2task2b.h"

#include "State_TEST.h"
#include "State_TEST_Includes.h"

using namespace FSM;
using namespace CLM;
using namespace FSMlab2task2b;
using namespace State;

TEST::TEST(const char *name):CLState(name, *new TEST::OnEntry,*new TEST::OnExit, *new TEST::Internal)
{
	_transitions[0] = new Transition_0();	_transitions[1] = new Transition_1();
}

TEST::~TEST()
{
	delete &onEntryAction();
	delete &onExitAction();
	delete &internalAction();

}

void TEST::OnEntry::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2b_VarRefs.mm"
#	include "State_TEST_VarRefs.mm"
#	include "State_TEST_OnEntry.mm"
}

void TEST::OnExit::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2b_VarRefs.mm"
#	include "State_TEST_VarRefs.mm"
#	include "State_TEST_OnExit.mm"
}

void TEST::Internal::perform(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2b_VarRefs.mm"
#	include "State_TEST_VarRefs.mm"
#	include "State_TEST_Internal.mm"
}

bool TEST::Transition_0::check(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2b_VarRefs.mm"
#	include "State_TEST_VarRefs.mm"

	return
	(
#			include "State_TEST_Transition_0.expr"
	);
}
bool TEST::Transition_1::check(CLMachine *_machine, CLState *_state) const
{
#	include "lab2task2b_VarRefs.mm"
#	include "State_TEST_VarRefs.mm"

	return
	(
#			include "State_TEST_Transition_1.expr"
	);
}


