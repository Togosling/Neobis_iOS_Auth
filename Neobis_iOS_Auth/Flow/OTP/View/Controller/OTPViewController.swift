//
//  OTPViewController.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/25.
//

import UIKit

class OTPViewController: UIViewController {
    
    fileprivate let otpViewModel: OTPViewModelType
    fileprivate let otpView = OTPView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addTargets()
        textFieldDelegate()
        setupViews()
        setupConstraints()
    }
    
    func textFieldDelegate() {
        otpView.forthPasswordTextField.delegate = self
    }
    
    func addTargets() {
        [otpView.firstPasswordTextField,otpView.secondPasswordTextField,otpView.thirdPasswordTextField,otpView.forthPasswordTextField].forEach { textField in
            textField.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
        }
        otpView.backButton.addTarget(self, action: #selector(handleBack), for: .touchUpInside)
    }
    
    @objc func handleBack() {
        otpViewModel.goBack()
    }
    
    @objc func textFieldDidChange(textField: UITextField){
        let text = textField.text
        if  text?.count == 1 {
            switch textField{
            case otpView.firstPasswordTextField:
                otpView.secondPasswordTextField.becomeFirstResponder()
            case otpView.secondPasswordTextField:
                otpView.thirdPasswordTextField.becomeFirstResponder()
            case otpView.thirdPasswordTextField:
                otpView.forthPasswordTextField.becomeFirstResponder()
            case otpView.forthPasswordTextField:
                otpView.forthPasswordTextField.resignFirstResponder()
            default:
                break
            }
        }
        if  text?.count == 0 {
            switch textField{
            case otpView.firstPasswordTextField:
                otpView.firstPasswordTextField.becomeFirstResponder()
            case otpView.secondPasswordTextField:
                otpView.firstPasswordTextField.becomeFirstResponder()
            case otpView.thirdPasswordTextField:
                otpView.secondPasswordTextField.becomeFirstResponder()
            case otpView.forthPasswordTextField:
                otpView.thirdPasswordTextField.becomeFirstResponder()
            default:
                break
            }
        }
        else{
            
        }
    }
    
    func setupViews() {
        view.addSubview(otpView)
    }
    
    func setupConstraints() {
        otpView.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
    }
    
    init(otpViewModel: OTPViewModelType) {
        self.otpViewModel = otpViewModel
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension OTPViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        otpViewModel.gotoDetails()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
