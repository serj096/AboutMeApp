//
//  ViewController.swift
//  AboutMeApp
//
//  Created by serj on 07.04.2025.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    
    private let correctUsername = "user"
    private let correctPassword = "1111"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.layer.cornerRadius = 10
        passwordTextField.layer.cornerRadius = 10
        logInButton.layer.cornerRadius = 10
        
        loginTextField.autocorrectionType = .no
        loginTextField.smartInsertDeleteType = .no
        loginTextField.autocapitalizationType = .none
        
        passwordTextField.autocorrectionType = .no
        passwordTextField.smartInsertDeleteType = .no
        passwordTextField.autocapitalizationType = .none
        passwordTextField.isSecureTextEntry = true
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
            if loginTextField.text != correctUsername || passwordTextField.text != correctPassword {
                showAlert(withTitle: "Ошибка", andMessage: "Неверные имя пользователя или пароль")
                return false
            }
            return true
        }
    
    @IBAction func tintLoginButtonPressed() {
        showAlert(withTitle: "Login", andMessage: "Login: user")
    }
    
    @IBAction func tintPasswordButtonPressed() {
        showAlert(withTitle: "Password", andMessage: "Password: 1111")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let helloVC = segue.destination as? HelloViewController
        helloVC?.username = loginTextField.text ?? ""
        
    }

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}

