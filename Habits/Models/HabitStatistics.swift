//
//  HabitStatistics.swift
//  Habits
//
//  Created by elliott on 8/15/22.
//

import Foundation

struct HabitStatistics {
    let habit: Habit
    let userCounts: [UserCount]
}

extension HabitStatistics: Codable { }
