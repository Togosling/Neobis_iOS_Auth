//
//  CustomButton.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/25.
//

import UIKit

class CustomButton: UIButton {
        
    func customProceedDisabledButtonSetup(string: String) {
        self.backgroundColor = UIColor(red: 0.969, green: 0.969, blue: 0.973, alpha: 1)
        self.setTitleColor( UIColor(red: 0.612, green: 0.643, blue: 0.671, alpha: 1), for: .normal)
        self.setTitle(string, for: .normal)
        self.titleLabel?.font = UIFont(name: "GothamPro-Black", size: 16)
        self.layer.cornerRadius = 16
        self.isEnabled = false
    }
    
    func customProceedEnabledButtonSetup(string: String) {
        self.backgroundColor = UIColor(red: 0.365, green: 0.373, blue: 0.937, alpha: 1)
        self.setTitleColor(.white, for: .normal)
        self.setTitle(string, for: .normal)
        self.titleLabel?.font = UIFont(name: "GothamPro-Black", size: 16)
        self.layer.cornerRadius = 16
        self.isEnabled = true
    }
    
    func customBackButtonSetup() {
        self.setImage(UIImage(named: "back"), for: .normal)
        self.tintColor = .black
        self.backgroundColor = UIColor(red: 0.75, green: 0.75, blue: 0.75, alpha: 0.2)
        self.layer.cornerRadius = 12
    }
    
    func customBottomButtonSetup(string: String) {
        self.setTitle(string, for: .normal)
        self.setTitleColor(.black, for: .normal)
        self.titleLabel?.font = UIFont(name: "GothamPro-Black", size: 16)
    }
}
