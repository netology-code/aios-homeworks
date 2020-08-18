//
//  Space.swift
//  StarWars
//
//  Created by Aleksey Rochev (Netology) on 19.11.2019.
//  Copyright © 2019 Aleksey Rochev (Netology). All rights reserved.
//

import Foundation

// MARK: - Models

protocol Coordinating {
    var coordinate: Point { get set }
}

protocol Vulnerable {
    var health: Int { get set }    
}

protocol SpaceObject: Coordinating, Vulnerable { }

protocol Displayable: AnyObject {
    func expose(for rect: Rect) -> [SpaceObject]
}

protocol ShootHandler: AnyObject {
    func fire(from weapons: Weapons, to coordinate: Point)
}

// MARK: - Space

class Space {
    
    // MARK: - Properties
    
    private var objects = [SpaceObject]() {
        didSet {
            // TODO: можно что-то сделать
        }
    }
    
    // MARK: - Methods
    
    func add(object: SpaceObject) {
        self.objects.append(object)
    }
    
    func add(objects: [SpaceObject]) {
        self.objects.append(contentsOf: objects)
    }
    
    func remove(with coordinate: Point) {
        if let index = objects.firstIndex(where: { $0.coordinate == coordinate } ) {
            self.objects.remove(at: index)
        }
    }
}

// MARK: - ShootHandler

extension Space: ShootHandler {
    
    func fire(from weapons: Weapons, to coordinate: Point) {
        guard var spaceObject = objects.first(where: { $0.coordinate == coordinate })  else {
            print("Не попал ха-ха")
            return
        }
        spaceObject.health -= weapons.damage
        if spaceObject.health <= 0 {
            remove(with: spaceObject.coordinate)
        }
    }
}

// MARK: - Displayable

extension Space: Displayable {
    
    func expose(for rect: Rect) -> [SpaceObject] {
        let filteredObjects = objects.filter { rect.contains($0.coordinate) }
        return filteredObjects
    }
}
