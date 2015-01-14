//
//lab2task2b.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__lab2task2b__
#define __clfsm__lab2task2b__

#include "CLMachine.h"

namespace FSM
{
	class CLState;

	namespace CLM
	{
		class lab2task2b: public CLMachine
		{
			CLState *_states[3];
			public:
			lab2task2b(int mid  = 0, const char *name = "lab2task2b");
			virtual ~lab2task2b();
			virtual CLState * const * states() const { return _states; }
			virtual int numberOfStates() const { return 3; }
#			include "lab2task2b_Variables.h"
		};
	}
}

extern "C"
{
	FSM::CLM::lab2task2b *CLM_Create_lab2task2b(int mid, const char *name);
}

#endif // defined(__gufsm__lab2task2b__)
