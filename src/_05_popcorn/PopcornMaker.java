package _05_popcorn;

public class PopcornMaker {

    public static void main(String[] args)
    {
    	Microwave blue = new Microwave();
    	Popcorn red = new Popcorn("stinky");
    	blue.putInMicrowave(red);
    	blue.setTime(2);
    	blue.startMicrowave();
    }
}
