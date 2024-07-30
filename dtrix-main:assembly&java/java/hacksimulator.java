// HackSimulator.java - Simulates hacking activities

import java.util.Random;

public class HackSimulator {

    private static final String[] COMMANDS = {
        "nmap -sP 192.168.1.1/24",
        "netcat -zv 192.168.1.1 22",
        "hydra -l admin -P passwords.txt ssh://192.168.1.1"
    };
    
    public static void initialize() {
        System.out.println("HackSimulator initialized.");
    }

    public static void runSimulation() {
        Random random = new Random();
        for (int i = 0; i < 5; i++) {
            String command = COMMANDS[random.nextInt(COMMANDS.length)];
            simulateCommand(command);
        }
    }

    private static void simulateCommand(String command) {
        System.out.println("Executing command: " + command);
        // Simulate command execution with a delay
        try {
            Thread.sleep(2000); // 2 seconds
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println("Command executed: " + command);
    }
}
