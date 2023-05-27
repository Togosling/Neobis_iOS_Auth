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
    
    // MARK: Keyboard Dismiss
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
        
    //MARK: FloatingTextField
    func textFieldDidBeginEditing(_ textField: UITextField) {
        guard let textField = textField as? CustomTextField else {return}
        textField.addPlaceHolder()
    }
    
    //MARK: DateOfBirthFormat
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField.tag == 1 {
            if (textField.text?.count == 2) || (textField.text?.count == 5) {
                if !(string == "") {
                    textField.text = (textField.text)! + "."
                }
            }
            return !(textField.text!.count > 7 && (string.count ) > range.length)
        } else {
            return true
        }
    }
}
