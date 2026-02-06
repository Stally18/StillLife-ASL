state("StillLife")	
{
    string32 location : "StillLife.dll", 0x000CC048;
  	int cutscene : "StillLife.dll", 0x000CBD68;	
}

startup
{
	  // to lower CPU usage
	  refreshRate = 10;
}

init
{
	  //if (timer.IsGameTimePaused == true) timer.IsGameTimePaused = false;
}

exit
{
	  timer.IsGameTimePaused = true;
}

update
{

}

start
{
	  if (old.location.Contains("MainMenu") &&  current.location.Contains("A2_Squat1"))
		    return true;
}

split
{

}

reset 
{

}

isLoading 
{
	  return current.cutscene == 0;
}
