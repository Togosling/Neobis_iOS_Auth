//
//  BaseViewController.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/23.
//

import UIKit

class BaseViewController: UIViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        addTargets()
        textFieldDelegate()
        setupViews()
        setupConstraints()
    }
    
    func addTargets() {}
    
    func textFieldDelegate() {}
    
    func setupViews() {}
    
    func setupConstraints() {}
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
        
    func textFieldDidBeginEditing(_ textField: UITextField) {
        guard let textField = textField as? CustomTextField else {return}
        textField.addPlaceHolder(textField)
    }
}
