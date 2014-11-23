//
//lab2task2a.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__lab2task2a__
#define __clfsm__lab2task2a__

#include "CLMachine.h"

namespace FSM
{
	class CLState;

	namespace CLM
	{
		class lab2task2a: public CLMachine
		{
			CLState *_states[7];
			public:
			lab2task2a(int mid  = 0, const char *name = "lab2task2a");
			virtual ~lab2task2a();
			virtual CLState * const * states() const { return _states; }
			virtual int numberOfStates() const { return 7; }
#			include "lab2task2a_Variables.h"
		};
	}
}

extern "C"
{
	FSM::CLM::lab2task2a *CLM_Create_lab2task2a(int mid, const char *name);
}

#endif // defined(__gufsm__lab2task2a__)
