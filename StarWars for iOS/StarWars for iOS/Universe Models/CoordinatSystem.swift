//
//  PointGenerator.swift
//  StarWars
//
//  Created by Aleksey Rochev (Netology) on 19.11.2019.
//  Copyright © 2019 Aleksey Rochev (Netology). All rights reserved.
//

import UIKit

//struct Point: Equatable {
//    var x: Int
//    var y: Int
//
//    static func == (lhs: Self, rhs: Self) -> Bool {
//        return lhs.x == rhs.x && lhs.y == rhs.y
//    }
//}

typealias Point = CGPoint
typealias Rect = CGRect

extension Point {
    static func generate() -> Point {
        let x = Int.random(in: 0...10)
        let y = Int.random(in: 0...10)
        return Point(x: x, y: y)
    }
}

extension Rect {
    static func generate() -> Rect {
        let x = Int.random(in: 0...10)
        let y = Int.random(in: 0...10)
        return Rect(x: x, y: y, width: 2, height: 2)
    }
}
