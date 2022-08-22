//
//  LoggedHabit.swift
//  Habits
//
//  Created by elliott on 8/19/22.
//

import Foundation

struct LoggedHabit {
    let userID: String
    let habitName: String
    let timeStamp: Date
}

extension LoggedHabit: Codable { }

