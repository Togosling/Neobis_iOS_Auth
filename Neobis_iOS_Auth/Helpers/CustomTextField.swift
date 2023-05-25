//
//  CustomTextField.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/22.
//

import UIKit

class CustomTextField: UITextField {
        
    // MARK: Left Padding
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 0)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 0)
    }
    
    func customTextFieldSetup(_ textField: UITextField, string: String) {
        textField.backgroundColor = UIColor(red: 0.969, green: 0.969, blue: 0.973, alpha: 1)
        textField.textColor = .black
        textField.font = UIFont(name: "GothamPro-Medium", size: 16)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.25
        textField.attributedPlaceholder = NSMutableAttributedString(string: string, attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle, NSAttributedString.Key.foregroundColor: UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 1)])
        textField.layer.cornerRadius = 8
    }
    
    func customOTPTextField(_ textField: UITextField) {
        textField.textColor = .black
        textField.font = UIFont(name: "GothamPro-Black", size: 28)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.27
        textField.attributedPlaceholder = NSMutableAttributedString(string: "0", attributes: [NSAttributedString.Key.kern: 0.36, NSAttributedString.Key.paragraphStyle: paragraphStyle, NSAttributedString.Key.foregroundColor: UIColor(red: 0.754, green: 0.754, blue: 0.754, alpha: 1)])
        textField.keyboardType = .numberPad
    }
    
    //MARK: FloatingTextField
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
    
    //MARK: Add Button To TextField
    let showPasswordButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(named: "hide")
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10)
        configuration.baseBackgroundColor = .clear
        let button = UIButton(configuration: configuration)
        return button
    }()
    
    func addButtontoTextField(_ textField: UITextField) {
        textField.rightView = showPasswordButton
        textField.rightViewMode = .always
        textField.isSecureTextEntry = true
        showPasswordButton.addTarget(self, action: #selector(handleShowPassword), for: .touchUpInside)
    }
    
    @objc func handleShowPassword(sender: UIButton) {
        if sender.configuration?.image == UIImage(named: "hide") {
            sender.configuration?.image = UIImage(named: "show")?.withTintColor(.black)
            if let textField = sender.superview as? UITextField {
                textField.isSecureTextEntry = false
            }
        } else {
            sender.configuration?.image = UIImage(named: "hide")
            if let textField = sender.superview as? UITextField {
                textField.isSecureTextEntry = true
            }
        }
    }
}
