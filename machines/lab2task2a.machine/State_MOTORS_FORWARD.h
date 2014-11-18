//
//State_MOTORS_FORWARD.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__lab2task2a_State_MOTORS_FORWARD_h__
#define __clfsm__lab2task2a_State_MOTORS_FORWARD_h__

#include "CLState.h"
#include "CLAction.h"
#include "CLTransition.h"

namespace FSM
{
	namespace CLM
	{
		namespace FSMlab2task2a
		{
			namespace State
			{
				class MOTORS_FORWARD: public CLState
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
						Transition_0(int toState = 1): CLTransition(toState) {}

						virtual bool check(CLMachine *, CLState *) const;
					};


#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wzero-length-array"
				CLTransition *_transitions[1];
				public:
					MOTORS_FORWARD(const char *name = "MOTORS_FORWARD");
					virtual ~MOTORS_FORWARD();

					virtual CLTransition * const *transitions() const { return _transitions; }
					virtual int numberOfTransitions() const { return 1; }

#					include "State_MOTORS_FORWARD_Variables.h"
#pragma clang diagnostic pop
				};
			}
		}
	}
}
#endif // defined(__gufsm__lab2task2a_State_MOTORS_FORWARD__)
