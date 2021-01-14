//
//  Hike.swift
//  Hiking
//
//  Created by Page Kallop on 1/14/21.
//

import Foundation

struct Hike {
    
    let name: String
    let imageURL: String
    let mile: Double
}

extension Hike {
    
    static func all() -> [Hike] {
        return [
        Hike(name: "Salmonberry Trail", imageURL: "turtleRock", mile: 6),
        Hike(name: "Tom, Dick, and Harry Mt", imageURL: "rocks", mile: 5.8),
        Hike(name: "Tamanawas", imageURL: "moon", mile: 5),
       
        ]
    }
}
