//
//  ViewController.swift
//  semana03-2022-2
//
//  Created by MAC35 on 9/09/22.
//

import UIKit

class ViewController: UIViewController {
    //Instanciamo auto
    let auto :Auto = Auto()
    //vamos a referenciar a los label de la vista
    
    @IBOutlet weak var lblspeed: UILabel!
    @IBOutlet weak var lblcolor: UILabel!
    @IBOutlet weak var lblmodel: UILabel!
    @IBOutlet weak var lblbrand: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpLabel(auto:auto)
    }
    //Los actions y los func siempre van despues de viewDidload
    
    @IBAction func onTabNewCar(_ sender: UIButton) {
        auto.brand = "Nissan"
        auto.model = "Frontier"
        auto.color = "Rojo"
        auto.speed = 50.3
        setUpLabel(auto: auto)
        
    }
    func setUpLabel (auto : Auto){
        lblbrand.text = auto.brand
        lblmodel.text = auto.model
        lblcolor.text = auto.color
        lblspeed.text = String(auto.speed)
    }
    @IBAction func onTabAcelerate(_ sender: UIButton) {
        let newSpeed = Float.random(in: 1...10)
        auto.move(moreSpeed: newSpeed)
        setUpLabel(auto: auto)
    }

    @IBAction func onTabStop(_ sender: UIButton) {
        auto.stop()
        setUpLabel(auto: auto)
    }

    @IBAction func onTabSlowdown(_ sender: UIButton) {
        let newSpeed = Float.random(in: 1...10)
        auto.slowDown(lessSpeed: newSpeed)
        setUpLabel(auto: auto)
    }
    
}

