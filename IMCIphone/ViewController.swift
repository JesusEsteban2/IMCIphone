//
//  ViewController.swift
//  IMCIphone
//
//  Created by Mañanas on 2/4/24.
//

import UIKit
// Prueba para comit
class ViewController: UIViewController {

    @IBOutlet weak var labelAltura: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonHelloWorld(_ sender: Any) {
        labelAltura.text="Hola Mundo"
    }
    
    @IBAction func buttonBack(_ sender: Any) {
        labelAltura.text="Altura"
    }
    
    @IBAction func buttonTint(_ sender: Any) {
        labelAltura.text="gordura"
        
    }
    
    
    
}

    


