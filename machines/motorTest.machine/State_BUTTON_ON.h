//
//State_BUTTON_ON.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__motorTest_State_BUTTON_ON_h__
#define __clfsm__motorTest_State_BUTTON_ON_h__

#include "CLState.h"
#include "CLAction.h"
#include "CLTransition.h"

namespace FSM
{
	namespace CLM
	{
		namespace FSMmotorTest
		{
			namespace State
			{
				class BUTTON_ON: public CLState
				{
					class OnEntry: public CLAction
					{
						virtual void perform(CLMachine *, CLState *) const;
					};
					class OnExit: public CLAction
					{
						virtual void perform(CLMachine *, CLState *) const;
					};
					class Internal: public CLAction
					{
						virtual void perform(CLMachine *, CLState *) const;
					};
					class Transition_0: public CLTransition
					{
						public:
						Transition_0(int toState = 3): CLTransition(toState) {}

						virtual bool check(CLMachine *, CLState *) const;
					};

					class Transition_1: public CLTransition
					{
						public:
						Transition_1(int toState = 2): CLTransition(toState) {}

						virtual bool check(CLMachine *, CLState *) const;
					};


#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wzero-length-array"
				CLTransition *_transitions[2];
				public:
					BUTTON_ON(const char *name = "BUTTON_ON");
					virtual ~BUTTON_ON();

					virtual CLTransition * const *transitions() const { return _transitions; }
					virtual int numberOfTransitions() const { return 2; }

#					include "State_BUTTON_ON_Variables.h"
#pragma clang diagnostic pop
				};
			}
		}
	}
}
#endif // defined(__gufsm__motorTest_State_BUTTON_ON__)
