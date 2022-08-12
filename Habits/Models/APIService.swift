//
//  APIService.swift
//  Habits
//
//  Created by elliott on 8/9/22.
//

import Foundation

struct HabitRequest: APIRequest {
    typealias Response = [String: Habit]
    var habitName: String?
    var path: String { "/habits" }
}

struct UserRequest: APIRequest {
    typealias Response = [String: User]
    
    var path: String { "/users" }
}


