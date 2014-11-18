//
//State_MOTORS_BACKWARD.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__lab2task2a_State_MOTORS_BACKWARD_h__
#define __clfsm__lab2task2a_State_MOTORS_BACKWARD_h__

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
				class MOTORS_BACKWARD: public CLState
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

					class Transition_1: public CLTransition
					{
						public:
						Transition_1(int toState = 4): CLTransition(toState) {}

						virtual bool check(CLMachine *, CLState *) const;
					};

					class Transition_2: public CLTransition
					{
						public:
						Transition_2(int toState = 5): CLTransition(toState) {}

						virtual bool check(CLMachine *, CLState *) const;
					};

					class Transition_3: public CLTransition
					{
						public:
						Transition_3(int toState = 4): CLTransition(toState) {}

						virtual bool check(CLMachine *, CLState *) const;
					};

					class Transition_4: public CLTransition
					{
						public:
						Transition_4(int toState = 5): CLTransition(toState) {}

						virtual bool check(CLMachine *, CLState *) const;
					};


#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wzero-length-array"
				CLTransition *_transitions[5];
				public:
					MOTORS_BACKWARD(const char *name = "MOTORS_BACKWARD");
					virtual ~MOTORS_BACKWARD();

					virtual CLTransition * const *transitions() const { return _transitions; }
					virtual int numberOfTransitions() const { return 5; }

#					include "State_MOTORS_BACKWARD_Variables.h"
#pragma clang diagnostic pop
				};
			}
		}
	}
}
#endif // defined(__gufsm__lab2task2a_State_MOTORS_BACKWARD__)
