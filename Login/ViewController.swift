//
//  ViewController.swift
//  Message
//
//  Created by Raileny S Lima on 29/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    var loginScreen: LoginScreen?
    
    // ciclo de vida responsavel para criação de uma view, referenciando uma view a outra.
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate(delegate: self)
        self.loginScreen?.configTextFieldDelegate(delegate: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
}

extension ViewController: LoginScreenProtocol {
    func actionLoginButton() {
        print("Deu certo login")
    }
    
    func actionRegisterButton() {
        print("Deu certo cadastro")
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
