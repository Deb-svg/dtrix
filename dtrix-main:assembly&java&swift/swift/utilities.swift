// Utilities.swift - Provides utility functions

import Foundation

class Utilities {
    static func printHeader(_ header: String) {
        print("=== \(header) ===")
    }

    static func generateRandomCommand() -> String {
        let commands = [
            "nmap -sP 192.168.1.1/24",
            "netcat -zv 192.168.1.1 22",
            "hydra -l admin -P passwords.txt ssh://192.168.1.1"
        ]
        return commands.randomElement() ?? "echo No command found"
    }
}
