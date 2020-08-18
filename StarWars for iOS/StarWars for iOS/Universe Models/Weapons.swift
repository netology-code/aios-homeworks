//
//  Weapons.swift
//  StarWars
//
//  Created by Aleksey Rochev (Netology) on 19.11.2019.
//  Copyright © 2019 Aleksey Rochev (Netology). All rights reserved.
//

import Foundation

protocol Armed {
    var weapons: [Weapons] { get }
}

protocol Shooting: Armed {
    func fire(to coordinate: Point) throws
}

enum WeaponsError: Error {
    case isEmpty
}

protocol Weapons {
    var name: String { get }
    var damage: Int { get }
//    var distance: Int { get }
    var ammunition: Int { get set }
    mutating func fire() throws
}

extension Weapons {
    mutating func fire() throws {
        guard ammunition > 0 else {
            print("\(name) Нет патронов!")
            throw WeaponsError.isEmpty
        }
        ammunition -= 1
    }
}
