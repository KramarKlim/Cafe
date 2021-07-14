//
//  LogInViewController.swift
//  Pizza
//
//  Created by Клим on 13.07.2021.
//

import UIKit

class LogInViewController: UIViewController {
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email"
        label.textColor = .blue
        label.font = UIFont(name: "Kefa", size: 25)
        return label
    }()
    
    let passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password"
        label.textColor = .blue
        label.font = UIFont(name: "Kefa", size: 25)
        return label
    }()
    
    let emailTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Your Email"
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.borderStyle = .roundedRect
        return textfield
    }()
    
    let passwordTextField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Your Password"
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.borderStyle = .roundedRect
        return textfield
    }()
    
    let enterButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setTitle( "Войти", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.titleLabel?.font = UIFont(name: "Kefa", size: 25)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(enterButton)
        constraintForEmailLabel()
        constraintForEmailTextField()
        constraintForPasswordLabel()
        constraintForPasswordTextField()
        constrainButton()
        
    }
    
    private func constraintForEmailLabel() {
        emailLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 14).isActive = true
        emailLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -60).isActive = true
    }
    
    private func constraintForEmailTextField() {
        emailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 14).isActive = true
        emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 5).isActive = true
        emailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -14).isActive = true
    }
    
    private func constraintForPasswordLabel() {
        passwordLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 14).isActive = true
        passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20).isActive = true
        
    }
    
    private func constraintForPasswordTextField() {
        passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 14).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -14).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 5).isActive = true
        passwordTextField.isSecureTextEntry = true
    }
    
    private func constrainButton() {
        enterButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 14).isActive = true
        enterButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -14).isActive = true
        enterButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        enterButton.addTarget(self, action: #selector(nextVC), for: .touchUpInside)
    }
    
    @objc func nextVC() {
        guard let email = emailTextField.text, let password = passwordTextField.text else { return }
        if email.isEmpty {
            showAlert(title: "Неверный логин", message: "Введите логин")
        } else if password.isEmpty {
            showAlert(title: "Неверный пароль", message: "Введите пароль")
        } else {
            performSegue(withIdentifier: "menu", sender: nil)
        }
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}




