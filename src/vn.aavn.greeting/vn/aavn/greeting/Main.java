package vn.aavn.greeting;

import vn.aavn.supporting.Greeting;

public class Main {
	public static void main(String[] args) {
		if (args.length > 0) {
			System.out.println("Hello, " + args[0] + ". " + Greeting.getGreeting());
		} else {
			System.out.println("Hello my friend, why don't you tell me your name?");
		}
	}
}
