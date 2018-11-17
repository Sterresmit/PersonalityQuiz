//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Sterre Smit on 13/11/2018.
//  Copyright © 2018 Sterre Smit. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}
enum ResponseType {
    case single, multiple, ranged
}
struct Answer {
    var text: String
    var type: TripType
}
enum TripType: Character {
    case tropical = "🏝", citytrip = "🌇", active = "🏕", roadtrip = "🚗"

    var definition: String {
        switch self {
        case .tropical:
            return "Seems like you need a little relaxing break! A tropical destination is something you'd like. Take time sipping cocktails and work on your tan in a tropical climate. "
        case .citytrip:
            return "A citytrip is what you need. Go on and explore a new city! Learn the history of an old city  and make sure you get some shopping done. "
        case .active:
            return "The destination for you is anywhere in nature, you should go outdoors and become one with nature. Grab your tent and flashlights and get ready for an adventure!"
        case .roadtrip:
            return "A roadtrip is just what you need! You really should not stay in one place. Why not travel across Europe? Loads of movement and the next stop is entirely up to you!"
        }
    }
}
