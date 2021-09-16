//
//  BaseViewController.swift
//  Mensagens
//
//  Created by André Felipe de Sousa Almeida - AAD on 16/09/21.
//  Copyright © 2021 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    @IBOutlet weak var lbMessage: UILabel!
    var message: Message!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func changeColor(_ sender: UIButton){
        guard let reference = self as? ColorPickerDelegate else {return}
        let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
        colorPicker.modalPresentationStyle = .overCurrentContext
        colorPicker.delegate = reference
        present(colorPicker, animated: true, completion: nil)
    }
    

}
