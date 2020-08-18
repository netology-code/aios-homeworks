//
//  StarshipsEmpire.swift
//  StarWars
//
//  Created by Aleksey Rochev (Netology) on 19.11.2019.
//  Copyright © 2019 Aleksey Rochev (Netology). All rights reserved.
//

import Foundation

class DeathStar: StarshipImp {
        
    // MARK: - Constants
    
    private enum Constants {
        static let health = 1000
    }

    // MARK: - Lifecycle
    
    init(coordinate: Point) {
        super.init(name: "Death Star",
                   fraction: .empare,
                   coordinate: coordinate,
                   weapons: [SuperLazer()])
        health = Constants.health
    }
    
    deinit {
        print("Люк, я твой отец!")
    }
}

