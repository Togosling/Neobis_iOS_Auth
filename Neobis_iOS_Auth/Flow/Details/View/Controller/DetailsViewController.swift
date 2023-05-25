//
//  DetailsViewController.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/25.
//

import UIKit

class DetailsViewController: BaseViewController {
    
    fileprivate let detailsViewModel: DetailsViewModelType
    fileprivate let detailsView = DetailsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    init(detailsViewModel: DetailsViewModelType) {
        self.detailsViewModel = detailsViewModel
        super .init(nibName: nil, bundle: nil)
    }
        
    override func setupViews() {
        view.addSubview(detailsView)
    }
    
    override func setupConstraints() {
        detailsView.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
