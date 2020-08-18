//
//  ViewController.swift
//  StarWars for iOS
//
//  Created by Aleksey Rochev (Netology) on 19.11.2019.
//  Copyright © 2019 Aleksey Rochev (Netology). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var gamePlay = GamePlay()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gamePlay.play()
    }

}

