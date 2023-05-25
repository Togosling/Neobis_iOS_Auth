//
//  CustomLabel.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/25.
//

import UIKit

class CustomLabel: UILabel {
    
    func customLogoLabel(label: UILabel) {
        label.textColor = UIColor(red: 0.365, green: 0.373, blue: 0.937, alpha: 1)
        label.font = UIFont(name: "GothamPro-Medium", size: 40)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.25
        label.attributedText = NSMutableAttributedString(string: "Смейся \nи улыбайся каждый день", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
    }
    
    func customTopLabel(label: UILabel, string: String) {
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont(name: "SFProText-Semibold", size: 18)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.12
        label.attributedText = NSMutableAttributedString(string: string, attributes: [NSAttributedString.Key.kern: -0.41, NSAttributedString.Key.paragraphStyle: paragraphStyle])
    }
    
    func customInfoLabel(label: UILabel) {
        label.textColor = UIColor(red: 0.162, green: 0.161, blue: 0.162, alpha: 1)
        label.font = UIFont(name: "GothamPro-Medium", size: 18)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.25
        let text = NSMutableAttributedString()
        text.append(NSAttributedString(string: "На вашу почту \n", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle]))
        text.append(NSAttributedString(string: "«dojacat01.gmail.com»", attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 93/255, green: 95/255, blue: 239/255, alpha: 1)]))
        text.append(NSAttributedString(string: " было \n отправлено письмо",attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle]))
        label.attributedText = text
        label.textAlignment = .center
    }
    
    func customRequirmentsLabel(label: UILabel, string: String) {
        label.textColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 1)
        label.font = UIFont(name: "GothamPro-Medium", size: 16)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.25
        label.attributedText = NSMutableAttributedString(string: string, attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
    }
    
    func customSentPasswordLabel(label: UILabel) {
        label.textColor = UIColor(red: 0.287, green: 0.287, blue: 0.287, alpha: 1)
        label.font = UIFont(name: "GothamPro-Medium", size: 20)
        label.textAlignment = .center
        label.text = "Мы отправили код на почту"
    }
}
