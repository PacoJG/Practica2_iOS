//
//  ViewController.swift
//  Practica2
//
//  Created by Francisco Jaime on 21/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var tvTextMuestra: UITextView!
    @IBOutlet weak var tfTextIngresar: UITextField!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var switchImageVar: UISwitch!
    @IBOutlet weak var btnAgregarVar: UIButton!
    @IBOutlet weak var sliderOpacityVar: UISlider!
    @IBOutlet weak var btnDeshabilitar: UIButton!
    @IBAction func sliderOpacity(_ sender: UISlider) {
        //UIView tienen la propiedad "alpha" para transferencia
        imagen.alpha = CGFloat(sender.value)
    }
    @IBAction func switchImage(_ sender: UISwitch) {
        if sender.isOn{
            self.imagen.image = UIImage(named: "angel")
        }else{
            self.imagen.image = UIImage(named: "evil")
        }
    }
    @IBAction func btnAgregar(_ sender: UIButton) {
        if(self.tvTextMuestra.text! .isEmpty){
            self.tvTextMuestra.text = self.tfTextIngresar.text
        }else{
            self.tvTextMuestra.text = self.tvTextMuestra.text + "\n" + self.tfTextIngresar.text!
        }
        self.tfTextIngresar.text = ""
    }
    
   
    @IBAction func btnActionDeshabilitar(_ sender: UIButton) {
        
        if(self.btnDeshabilitar.currentTitle == "Deshabilitar"){
            self.btnDeshabilitar.setTitle("Habilitar", for: .normal)
            self.sliderOpacityVar.isEnabled = false
            self.switchImageVar.isEnabled = false
            self.tfTextIngresar.isEnabled = false
            self.btnAgregarVar.isEnabled = false
            
        }else{
            self.btnDeshabilitar.setTitle("Deshabilitar", for: .normal)
            self.sliderOpacityVar.isEnabled = true
            self.switchImageVar.isEnabled = true
            self.tfTextIngresar.isEnabled = true
            self.btnAgregarVar.isEnabled = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.btnDeshabilitar.setTitle("Deshabilitar", for: .normal)
        self.btnDeshabilitar.titleLabel?.font = .systemFont(ofSize: 23)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        labelTitle.font = UIFont(name: "Caveman", size: 25)
        
    }


}

