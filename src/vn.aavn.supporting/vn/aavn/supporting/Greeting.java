package vn.aavn.supporting;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class Greeting {

	public static String getGreeting() {
		List<String> greetings = new ArrayList<>();
		greetings.add("How are you?");
		greetings.add("Have a great day!");
		greetings.add("You're my best friend!");
		greetings.add("You're not alone today because you have me, I'm Java 9");
		Random rnd = new Random();

		return greetings.get(rnd.nextInt(greetings.size()));
	}

}
