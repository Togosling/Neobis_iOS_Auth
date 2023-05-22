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
}
