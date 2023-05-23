//
//  BaseView.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/23.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        setupViews()
        setupConstraints()
    }
        
    func setupViews() {}
    func setupConstraints() {}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
