//
//  StringExtension.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/26.
//

import UIKit

let firstpart = "[A-Z0-9a-z]([A-Z0-9a-z._%+-]{0,30}[A-Z0-9a-z])?"
let serverpart = "([A-Z0-9a-z]([A-Z0-9a-z-]{0,30}[A-Z0-9a-z])?\\.){1,5}"
let emailRegex = firstpart + "@" + serverpart + "[A-Za-z]{2,8}"
let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)

let passwordRegex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[d$@$!%*?&#])[A-Za-z\\dd$@$!%*?&#]{8,15}"
let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordRegex)

extension String {
    func isEmail() -> Bool {
        return emailPredicate.evaluate(with: self)
    }
    func isPassword() -> Bool {
        return passwordPredicate.evaluate(with: self)
    }
}
