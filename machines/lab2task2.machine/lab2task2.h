//
//lab2task2.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__lab2task2__
#define __clfsm__lab2task2__

#include "CLMachine.h"

namespace FSM
{
	class CLState;

	namespace CLM
	{
		class lab2task2: public CLMachine
		{
			CLState *_states[7];
			public:
			lab2task2(int mid  = 0, const char *name = "lab2task2");
			virtual ~lab2task2();
			virtual CLState * const * states() const { return _states; }
			virtual int numberOfStates() const { return 7; }
#			include "lab2task2_Variables.h"
		};
	}
}

extern "C"
{
	FSM::CLM::lab2task2 *CLM_Create_lab2task2(int mid, const char *name);
}

#endif // defined(__gufsm__lab2task2__)
