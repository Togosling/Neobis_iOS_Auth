//
//  CustomButton.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/25.
//

import UIKit

class CustomButton: UIButton {
    
    func customProceedButtonSetup(button: UIButton, string: String) {
        button.backgroundColor = UIColor(red: 0.365, green: 0.373, blue: 0.937, alpha: 1)
        button.setTitleColor( .white, for: .normal)
        button.setTitle(string, for: .normal)
        button.titleLabel?.font = UIFont(name: "GothamPro-Black", size: 16)
        button.layer.cornerRadius = 16
    }
    
    func customBackButtonSetup(button: UIButton) {
        button.setImage(UIImage(named: "back"), for: .normal)
        button.tintColor = .black
        button.backgroundColor = UIColor(red: 0.75, green: 0.75, blue: 0.75, alpha: 0.2)
        button.layer.cornerRadius = 12
    }
    
    func customBottomButtonSetup(button: UIButton, string: String) {
        button.setTitle(string, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "GothamPro-Black", size: 16)
    }
}
