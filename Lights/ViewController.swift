//
//  ViewController.swift
//  Lights
//
//  Created by Петрова Яна Георгиевна on 20.04.2022.
//

import UIKit

class ViewController: UIViewController {
  
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    
    @IBOutlet var startButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = 1.0
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        redLight.layer.cornerRadius = redLight.frame.height/2
        yellowLight.layer.cornerRadius = yellowLight.frame.height/2
        greenLight.layer.cornerRadius = greenLight.frame.height/2
    }

    
    @IBAction func switchLights() {
        startButton.setTitle("NEXT", for: .normal)
        
// Не поняла, почему при смене текста кнопки на NEXT, меняется и шрифт. Пыталась использовать не ".normal", а что-нибудь другое, но не помогло((
        
        if redLight.alpha == 1.0 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1.0
            return
        }
        
        if yellowLight.alpha == 1.0 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1.0
            return
        }

        if greenLight.alpha == 1.0 {
            greenLight.alpha = 0.3
            redLight.alpha = 1.0
            return
        }
        
        else {
            redLight.alpha = 1.0
            return 
        }
    }
}
       
 
