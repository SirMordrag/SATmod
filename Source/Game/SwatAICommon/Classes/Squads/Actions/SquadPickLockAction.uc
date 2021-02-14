///////////////////////////////////////////////////////////////////////////////
// SquadPickLockAction.uc - SquadPickLockAction class
// this action is used to organize the Officer's pick lock behavior

class SquadPickLockAction extends SquadStackUpAction;
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
//
// State Code

state Running
{
Begin:
	StackUpSquad(true);

	WaitForZulu();

	PickLock(true);

    succeed();
}

///////////////////////////////////////////////////////////////////////////////
defaultproperties
{
	satisfiesGoal = class'SquadPickLockGoal'
}