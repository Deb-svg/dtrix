// LogManager.java - Manages logging of activities

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class LogManager {

    private static final String LOG_FILE = "dtrix_log.txt";

    public static void initialize() {
        System.out.println("LogManager initialized.");
        // Create or clear the log file
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(LOG_FILE))) {
            writer.write("Dtrix Log Initialized\n");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void log(String message) {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(LOG_FILE, true))) {
            writer.write(message + "\n");
            System.out.println("Logged: " + message);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
