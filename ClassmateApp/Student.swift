//
//  Student.swift
//  ClassmateApp
//
//  Created by ANNAHLU RACLAWSKI on 10/13/23.
//

import Foundation

enum Rating {
    case INSANE
    case fire
    case mid
    case trash
    case loathe
}

public class Student {
    var name : String
    var hairColor : String
    var rating : Rating
    
    init(name: String, hairColor: String, rating: Rating) {
        self.name = name
        self.hairColor = hairColor
        self.rating = rating
    }
}
