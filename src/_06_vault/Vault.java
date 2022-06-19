package _06_vault;

import java.util.Random;

/**
 * 
 * A vault with a secret code
 *
 */
public class Vault {
	private int secret = new Random().nextInt(1000001);
	public Vault()
	{
		System.out.println("Vault initiated");
	}
	/**
	 * Tries to access the vault
	 * 
	 * @param guess the code being attempted
	 * @return true if the guess matches the code, false otherwise
	 */
	public boolean tryCode(int guess) {
		return guess == secret;
	}
	public void codeReturn()
	{
		System.out.println("The Code was:" + secret);
	}
}
