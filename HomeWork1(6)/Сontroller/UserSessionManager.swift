//
// UserSessionManager.swift
//  HomeWork1(6)
//
//  Created by User on 8/1/24.
//

import Foundation

class UserSessionManager {
    static let shared = UserSessionManager()

    var name: String?
    var surname: String?
    var phone: String?
    var sessionCreationDate: Date?

    private init() {
        }

    func startSession(name: String, surname: String, phone: String) {
        self.name = name
        self.surname = surname
        self.phone = phone
        self.sessionCreationDate = Date()
    }

    func endSession() {
        name = nil
        surname = nil
        phone = nil
        sessionCreationDate = nil
    }

    func isSessionActive() -> Bool {
        guard let sessionCreationDate = sessionCreationDate else {
            return false
        }
        return Date().timeIntervalSince(sessionCreationDate) < 60
    }
}
