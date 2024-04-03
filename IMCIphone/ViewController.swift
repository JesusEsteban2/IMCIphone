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
    @IBOutlet weak var resultIMC: UILabel!
    @IBOutlet weak var editAltura: UITextField!
    @IBOutlet weak var editPeso: UITextField!
    @IBOutlet weak var stepperAltura: UIStepper!
    @IBOutlet weak var stepperPeso: UIStepper!
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var buttonMostrar: UIButton!
    @IBOutlet weak var buttonBack: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stepperAltura.value=100
        stepperPeso.value=70
    }
    
    @IBAction func buttonMostrar(_ sender: Any) {
        imagen.isHidden=false
        buttonMostrar.isHidden=true
        buttonBack.isHidden=false
    }
  
    
    @IBAction func buttonBack(_ sender: Any) {
        imagen.isHidden=true
        buttonMostrar.isHidden=false
        buttonBack.isHidden=true
    }
    
    @IBAction func buttonTint(_ sender: Any) {
        
        var altura: Double? = Double(editAltura.text!)
        let peso:Double? = Double (editPeso.text!)
        var imc:Double=0
        if altura != nil {
            altura!=altura!/100
            altura!=altura!*altura!
            imc=peso!/altura!
        }
        imc=Double(Int (imc * 100) / 100)
        
        resultIMC.text="\(imc)"
        
        switch imc {
        case 0...18.5:
            resultIMC.backgroundColor=UIColor.blue
            resultIMC.textColor=UIColor.white
        case 18.5...24.9:
            resultIMC.backgroundColor=UIColor(resource:ColorResource.bluePer)
            resultIMC.textColor=UIColor.black
        case 25.0...29.9:
            resultIMC.backgroundColor=UIColor.green
            resultIMC.textColor=UIColor.black
        case 30.0...34.9:
            resultIMC.backgroundColor=UIColor(resource:ColorResource.greenYel)
            resultIMC.textColor=UIColor.black
        case 35.0...39.9:
            resultIMC.backgroundColor=UIColor.orange
            resultIMC.textColor=UIColor.black
        default:
            resultIMC.backgroundColor=UIColor.red
            resultIMC.textColor=UIColor.white
        }
        
        
    }
   
  
    @IBAction func stepperChange(_ sender: Any) {
        editAltura.text="\(Int(stepperAltura.value))"
    }
    
    @IBAction func stepper2Change(_ sender: Any) {
        editPeso.text="\(Int(stepperPeso.value))"
    }
    
    
}

    


