//
//  UserStatistics.swift
//  Habits
//
//  Created by elliott on 8/17/22.
//

import Foundation

struct UserStatistics {
    let user: User
    let habitCounts: [HabitCount]
}

extension UserStatistics: Codable { }
