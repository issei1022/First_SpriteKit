//
//  GameViewController.swift
//  First_SpriteKit
//
//  Created by 澤野一成 on 2014/12/01.
//  Copyright (c) 2014年 issey sawa. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController, UIGestureRecognizerDelegate {
    var scene: GameScene!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = view as SKView
        skView.multipleTouchEnabled = false
        
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        skView.presentScene(scene)
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    @IBAction func didTap(sender: UITapGestureRecognizer) {
        let location = sender.locationInView(view)
        println("tapped at \(location.x), \(location.y)")
        scene.mark(location)
    }
}
