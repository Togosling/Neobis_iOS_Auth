//
//  CustomImageView.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/25.
//

import UIKit

class CustomImageView: UIImageView {
    
    func customLogoImageViewSetup(iv: UIImageView) {
        iv.image = UIImage(named: "smile")
    }
    
    func customEllipseImageViewSetup(iv: UIImageView) {
        iv.image = UIImage(named: "ellipse")
    }
}
