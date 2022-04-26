//
//  TodayError.swift
//  Today
//
//  Created by Alessa De Leon Chavez on 2022-04-25.
//

import Foundation

enum TodayError: LocalizedError {
     case accessDenied
    //ask for permission to user to access their reminder data
     case accessRestricted
     case failedReadingCalendarItem
     case failedReadingReminders
     case reminderHasNoDueDate
    //ask for permission to user to access their reminder data
     case unknown
    
    var errorDescription: String? {
        switch self {
        case .accessDenied:
            return NSLocalizedString("The app doesn't have  permission to read reminders.", comment: "access denied error description")
        case .accessRestricted:
            return NSLocalizedString("This device doesn't allow access to reminders.", comment: "access restricted error description")
        case .failedReadingCalendarItem:
            return NSLocalizedString("failto read a calendar item", comment: "failed reading calendar item error description")
        case .failedReadingReminders:
            return NSLocalizedString("Failed to read reminders.", comment: "failed reading reminders error description")
        case .reminderHasNoDueDate:
            return NSLocalizedString("A reminder has no due date.", comment: "reminder has no due date description")
        case .unknown:
            return NSLocalizedString("An unknown error acurred", comment: "uknown error description")
      
        }
    }
}
