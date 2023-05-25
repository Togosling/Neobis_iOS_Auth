//
//  OTPViewController.swift
//  Neobis_iOS_Auth
//
//  Created by Тагай Абдылдаев on 2023/5/25.
//

import UIKit

class OTPViewController: BaseViewController {
    
    fileprivate let otpViewModel: OTPViewModelType
    fileprivate let otpView = OTPView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func addTargets() {
        otpView.passwordTextField1.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
        otpView.passwordTextField2.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
        otpView.passwordTextField3.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
        otpView.passwordTextField4.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: UIControl.Event.editingChanged)
        otpView.backButton.addTarget(self, action: #selector(handleBack), for: .touchUpInside)
    }
    
    @objc func handleBack() {
        otpViewModel.goBack()
    }
    
    @objc func textFieldDidChange(textField: UITextField){
            let text = textField.text
            if  text?.count == 1 {
                switch textField{
                case otpView.passwordTextField1:
                    otpView.passwordTextField2.becomeFirstResponder()
                case otpView.passwordTextField2:
                    otpView.passwordTextField3.becomeFirstResponder()
                case otpView.passwordTextField3:
                    otpView.passwordTextField4.becomeFirstResponder()
                case otpView.passwordTextField4:
                    otpView.passwordTextField4.resignFirstResponder()
                default:
                    break
                }
            }
            if  text?.count == 0 {
                switch textField{
                case otpView.passwordTextField1:
                    otpView.passwordTextField1.becomeFirstResponder()
                case otpView.passwordTextField2:
                    otpView.passwordTextField1.becomeFirstResponder()
                case otpView.passwordTextField3:
                    otpView.passwordTextField2.becomeFirstResponder()
                case otpView.passwordTextField4:
                    otpView.passwordTextField3.becomeFirstResponder()
                default:
                    break
                }
            }
            else{

            }
        }
    
    override func setupViews() {
        view.addSubview(otpView)
    }
    
    override func setupConstraints() {
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
