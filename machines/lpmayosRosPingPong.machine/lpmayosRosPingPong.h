//
//lpmayosRosPingPong.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__lpmayosRosPingPong__
#define __clfsm__lpmayosRosPingPong__

#include "CLMachine.h"

namespace FSM
{
	class CLState;

	namespace CLM
	{
		class lpmayosRosPingPong: public CLMachine
		{
			CLState *_states[4];
			public:
			lpmayosRosPingPong(int mid  = 0, const char *name = "lpmayosRosPingPong");
			virtual ~lpmayosRosPingPong();
			virtual CLState * const * states() const { return _states; }
			virtual int numberOfStates() const { return 4; }
#			include "lpmayosRosPingPong_Variables.h"
		};
	}
}

extern "C"
{
	FSM::CLM::lpmayosRosPingPong *CLM_Create_lpmayosRosPingPong(int mid, const char *name);
}

#endif // defined(__gufsm__lpmayosRosPingPong__)
