//
//lpmayosRosBlindTurttleBot.h
//
//Automatically created through MiEditCLFSM -- do not change manually!
//
#ifndef __clfsm__lpmayosRosBlindTurttleBot__
#define __clfsm__lpmayosRosBlindTurttleBot__

#include "CLMachine.h"

namespace FSM
{
	class CLState;

	namespace CLM
	{
		class lpmayosRosBlindTurttleBot: public CLMachine
		{
			CLState *_states[4];
			public:
			lpmayosRosBlindTurttleBot(int mid  = 0, const char *name = "lpmayosRosBlindTurttleBot");
			virtual ~lpmayosRosBlindTurttleBot();
			virtual CLState * const * states() const { return _states; }
			virtual int numberOfStates() const { return 4; }
#			include "lpmayosRosBlindTurttleBot_Variables.h"
		};
	}
}

extern "C"
{
	FSM::CLM::lpmayosRosBlindTurttleBot *CLM_Create_lpmayosRosBlindTurttleBot(int mid, const char *name);
}

#endif // defined(__gufsm__lpmayosRosBlindTurttleBot__)
