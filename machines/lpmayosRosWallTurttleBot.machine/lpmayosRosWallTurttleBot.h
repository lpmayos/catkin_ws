//
//lpmayosRosWallTurttleBot.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__lpmayosRosWallTurttleBot__
#define __clfsm__lpmayosRosWallTurttleBot__

#include "CLMachine.h"

namespace FSM
{
	class CLState;

	namespace CLM
	{
		class lpmayosRosWallTurttleBot: public CLMachine
		{
			CLState *_states[7];
			public:
			lpmayosRosWallTurttleBot(int mid  = 0, const char *name = "lpmayosRosWallTurttleBot");
			virtual ~lpmayosRosWallTurttleBot();
			virtual CLState * const * states() const { return _states; }
			virtual int numberOfStates() const { return 7; }
#			include "lpmayosRosWallTurttleBot_Variables.h"
		};
	}
}

extern "C"
{
	FSM::CLM::lpmayosRosWallTurttleBot *CLM_Create_lpmayosRosWallTurttleBot(int mid, const char *name);
}

#endif // defined(__gufsm__lpmayosRosWallTurttleBot__)
