//
//  GameScene.swift
//  First_SpriteKit
//
//  Created by 澤野一成 on 2014/12/01.
//  Copyright (c) 2014年 issey sawa. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var turn_o = true
    
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoder not supported")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        backgroundColor = SKColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        anchorPoint = CGPoint(x: 0, y:0)
        
        let background = SKSpriteNode(imageNamed: "背景")
        background.position = CGPoint(x: 0, y:0)
        background.anchorPoint = CGPoint(x: 0, y: 0)
        addChild(background)
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    func tranceform(w: CGFloat) -> CGFloat {
        switch w {
        case let w where 0 < w && w < 80:
            return 0
        case let w where 80 < w && w < 160:
            return 80
        case let w where 160 < w && w < 240:
            return 160
        default:
            return -80
        }
    }
    
    func mark(location: CGPoint) {
        let imageName = turn_o ? "o" : "x"
        let sign = SKSpriteNode(imageNamed: imageName)
        sign.position = CGPoint(x: tranceform(location.x), y: 160 - tranceform(location.y - 320))
        sign.anchorPoint = CGPoint(x: 0, y: 0)
        addChild(sign)
        
        turn_o = !turn_o
    }
}
