//
//  CombinedStats.swift
//  Habits
//
//  Created by elliott on 8/22/22.
//

import Foundation

struct CombinedStatistics {
    let userStatistics: [UserStatistics]
    let habitStatistics: [HabitStatistics]
}

extension CombinedStatistics: Codable { }
