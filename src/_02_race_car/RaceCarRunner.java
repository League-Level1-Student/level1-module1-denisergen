package _02_race_car;
/*
 *    Copyright (c) The League of Amazing Programmers 2013-2019
 *    Level 1
 */



public class RaceCarRunner {
	public static void main(String[] args) {
		/* Do the following things without changing the RaceCar class */
		
		// 1. Create a RaceCar and place it in 5th position
		RaceCar tomato = new RaceCar("tomato", 5);
		
		// 2. Print the RaceCar's position in the race
		System.out.println("You are in "+tomato.getPositionInRace()+" place!");
		
		// 3. Crash the RaceCar
		tomato.crash();
		// 4. If the car is damaged. Bring it in for a pit stop.
		if (tomato.isDamaged() == true) 
		{
		tomato.pit();
		}
		// 5. Help the car move into first place.
		for(int i=0; i<100; i++)
		{
		if(tomato.getPositionInRace()!=1) {
		tomato.overtake();
		}
		}
		
		
		
	}
}
