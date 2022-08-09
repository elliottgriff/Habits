//
//  Habit.swift
//  Habits
//
//  Created by elliott on 8/9/22.
//

import Foundation

struct Habit {
    let name: String
    let category: Category
    let info: String
}

extension Habit: Codable { }
