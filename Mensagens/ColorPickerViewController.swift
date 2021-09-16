//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by André Felipe de Sousa Almeida - AAD on 16/09/21.
//  Copyright © 2021 Eric Brito. All rights reserved.
//

import UIKit


protocol ColorPickerDelegate: class {
    func aplyColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {

    @IBOutlet weak var vwColor: UIView!
    
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    weak var delegate: ColorPickerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func chooseColor(_ sender: UIButton) {
        delegate?.aplyColor(color: vwColor.backgroundColor!)
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func changeColor(_ sender: UISlider) {
        vwColor.backgroundColor = UIColor(displayP3Red: CGFloat(slRed.value),
                                          green: CGFloat(slGreen.value),
                                          blue: CGFloat(slBlue.value),
                                          alpha: 1.0)
    }
    
    
}
