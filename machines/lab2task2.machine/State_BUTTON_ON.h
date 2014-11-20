//
// State_BUTTON_ON.h
//
// Automatically created through MiCASE -- do not change manually!
//
#ifndef clfsm_lab2task2_State_BUTTON_ON_h
#define clfsm_lab2task2_State_BUTTON_ON_h

#include "CLState.h"
#include "CLAction.h"
#include "CLTransition.h"

namespace FSM
{
    namespace CLM
    {
      namespace FSMlab2task2
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

                CLTransition *_transitions[2];

                public:
                    BUTTON_ON(const char *name = "BUTTON_ON");
                    virtual ~BUTTON_ON();

                    virtual CLTransition * const *transitions() const { return _transitions; }
                    virtual int numberOfTransitions() const { return 2; }

#                   include "State_BUTTON_ON_Variables.h"
            };
        }
      }
    }
}

#endif
