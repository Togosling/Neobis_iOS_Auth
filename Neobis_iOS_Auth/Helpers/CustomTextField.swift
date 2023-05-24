//
//  CustomTextField.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/22.
//

import UIKit

class CustomTextField: UITextField {
        
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 0)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 0)
    }
    
    func addPlaceHolder(_ textField: UITextField) {
        guard let placeholder = textField.placeholder else {return}
        let label = UILabel()
        label.isHidden = true
        label.text = placeholder
        label.textColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 1)
        label.font = UIFont(name: "GothamPro-Medium", size: 16)
        label.sizeToFit()
        textField.addSubview(label)
        label.center = textField.convert(textField.center, from: textField.superview)
        label.frame.origin.x = 10
        textField.addTarget(self, action: #selector(handleChange), for: .editingChanged)
    }
    
    @objc func handleChange(_ textField: UITextField) {
        var label = UILabel()

        for subView in textField.subviews {
            if let tmpLabel = subView as? UILabel {
                label = tmpLabel
            }
        }

        UIView.animate(withDuration: 0.3) {
            if textField.text?.count == 0 {
                label.center = textField.convert(textField.center, from: textField.superview)
                label.frame.origin.x = 10
                textField.subviews.forEach { subView in
                    if let subView = subView as? UILabel {
                        subView.isHidden = true
                    }
                }
            } else {
                label.isHidden = false
                label.frame.origin.y = textField.bounds.origin.y + 5.0
                label.textColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 1)
                label.font = UIFont(name: "GothamPro-Medium", size: 12)
            }
        }
    }
}
