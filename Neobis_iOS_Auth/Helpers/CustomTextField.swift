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
    
    //MARK: CustomTextFields Setup
    func customTextFieldSetup(string: String) {
        self.backgroundColor = UIColor(red: 0.969, green: 0.969, blue: 0.973, alpha: 1)
        self.textColor = .black
        self.font = UIFont(name: "GothamPro-Medium", size: 16)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.25
        self.attributedPlaceholder = NSMutableAttributedString(string: string, attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle, NSAttributedString.Key.foregroundColor: UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 1)])
        self.layer.cornerRadius = 8
    }
            
    //MARK: FloatingTextField
    func addPlaceHolder() {
        guard let placeholder = self.placeholder else {return}
        let label = UILabel()
        label.isHidden = true
        label.text = placeholder
        label.textColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 1)
        label.font = UIFont(name: "GothamPro-Medium", size: 16)
        label.sizeToFit()
        self.addSubview(label)
        label.center = self.convert(self.center, from: self.superview)
        label.frame.origin.x = 10
        self.addTarget(self, action: #selector(handleChange), for: .editingChanged)
    }
    
    @objc func handleChange() {
        var label = UILabel()

        for subView in self.subviews {
            if let tmpLabel = subView as? UILabel {
                label = tmpLabel
            }
        }

        UIView.animate(withDuration: 0.3) {
            if self.text?.count == 0 {
                label.center = self.convert(self.center, from: self.superview)
                label.frame.origin.x = 10
                self.subviews.forEach { subView in
                    if let subView = subView as? UILabel {
                        subView.isHidden = true
                    }
                }
            } else {
                label.isHidden = false
                label.frame.origin.y = self.bounds.origin.y + 5.0
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
    
    func addButtontoTextField() {
        self.rightView = showPasswordButton
        self.rightViewMode = .always
        self.isSecureTextEntry = true
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
    
    func isEmail() -> Bool {
        return self.text?.isEmail() ?? false
    }
    func isPassword() -> Bool {
        return self.text?.isPassword() ?? false
    }
    
    func hasUpperCaseLetters() -> Bool {
        guard let text = self.text else {
            return false
        }
        let regex = try! NSRegularExpression(pattern: "[A-Z]")
        let matches = regex.matches(in: text, range: NSRange(text.startIndex..., in: text))
        return !matches.isEmpty
    }
    
    func hasNumbers() -> Bool {
        guard let text = self.text else {
            return false
        }
        let regex = try! NSRegularExpression(pattern: "[0-9]")
        let matches = regex.matches(in: text, range: NSRange(text.startIndex..., in: text))
        return !matches.isEmpty
    }
    
    func hasSpecialSymbols() -> Bool {
        guard let text = self.text else {
            return false
        }
        let regex = try! NSRegularExpression(pattern: "[$@$!%*?&#]")
        let matches = regex.matches(in: text, range: NSRange(text.startIndex..., in: text))
        return !matches.isEmpty
    }
}
