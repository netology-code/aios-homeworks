//
//  GamePlay.swift
//  StarWars
//
//  Created by Aleksey Rochev (Netology) on 19.11.2019.
//  Copyright © 2019 Aleksey Rochev (Netology). All rights reserved.
//

import Foundation

class GamePlay {
    
    //MARK: - Properties
    
    private let space = Space()
    
    func play() {
        print("Давным давно в далекой галактике")
        
        let deathStarPoint = Point.generate()
        let deathStar = DeathStar(coordinate: deathStarPoint)
        deathStar.shootHandler = space
        space.add(object: deathStar)
        
        let xWingPoint = Point.generate()
        let xWing = XWing(coordinate: xWingPoint)
        xWing.shootHandler = space
                
        space.add(object: xWing)
        
        let radarPoint = Point.generate()
        let radar = Radar(coordinate: radarPoint)
                
        radar.datasource = space
        radar.observer = xWing
        radar.toggle()        
        space.add(object: radar)
    }
    
    deinit {
        print("Game Over")
    }
}
