//
//State_END.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__lab2task2a_State_END_h__
#define __clfsm__lab2task2a_State_END_h__

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
				class END: public CLState
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

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wzero-length-array"
				CLTransition *_transitions[0];
				public:
					END(const char *name = "END");
					virtual ~END();

					virtual CLTransition * const *transitions() const { return _transitions; }
					virtual int numberOfTransitions() const { return 0; }

#					include "State_END_Variables.h"
#pragma clang diagnostic pop
				};
			}
		}
	}
}
#endif // defined(__gufsm__lab2task2a_State_END__)
