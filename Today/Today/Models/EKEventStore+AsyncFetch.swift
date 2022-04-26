//
//  EKEventStore+AsyncFetch.swift
//  Today
//
//  Created by Alessa De Leon Chavez on 2022-04-25.
//

import Foundation
import EventKit
//EKEventStore can access a users calendar events and reminders.
extension EKEventStore {
    //Async keyword after func parameters indicates that this fuction can execute asynchrooudly.
    func fetchReminders(matching predicate: NSPredicate) async throws -> [EKReminder] {
        try await withCheckedThrowingContinuation { continuation in
            fetchReminders(matching: predicate) { reminders in
                if let reminders = reminders {
                    continuation.resume(returning: reminders)
                } else {
                    continuation.resume(throwing: TodayError.failedReadingReminders)
                }
            }
        }
    }
}
