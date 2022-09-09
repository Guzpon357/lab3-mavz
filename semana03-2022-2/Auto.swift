//
//  Auto.swift
//  semana03-2022-2
//
//  Created by MAC35 on 9/09/22.
//

import SwiftUI

class Auto{
    var brand : String = "Toyota"
    var model : String = "Pickup"
    var color : String = "negro"
    var speed : Float = 60
    
    func move(moreSpeed : Float){
        speed += moreSpeed
        if speed > 160 {
            self.stop()
        }
    }
    func slowDown(lessSpeed:Float){
        speed-=lessSpeed
        if speed < 0 {
            move(moreSpeed: lessSpeed)
        }
    }
    func stop(){
        print("Auto stopped")
        speed = 0.0
    }
    
}
