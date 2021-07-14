//
//  PaymentViewController.swift
//  Pizza
//
//  Created by Клим on 14.07.2021.
//

import UIKit

class PaymentViewController: UIViewController {
    
    var nameOrder: String?
    
    var ingridients: [String?] = []
    
    let orderLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Kefa", size: 30)
        label.textColor = .gray
        label.text = "Ваш заказ:"
        return label
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Kefa", size: 20)
        label.textColor = .black
        return label
    }()
    
    let dopLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Kefa", size: 30)
        label.textColor = .gray
        label.text = "Дополнительные ингридиенты:"
        label.numberOfLines = 0
        return label
    }()
    
    let ingridientFirstLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Kefa", size: 20)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    let ingridientSecondLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Kefa", size: 20)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    let ingridientThirdLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Kefa", size: 20)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    let payButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Оплатить", for: .normal)
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.titleLabel?.font = UIFont(name: "Kefa", size: 25)
        return button
    }()
    
    let nalLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Kefa", size: 30)
        label.textColor = .gray
        label.text = "Наличными"
        return label
    }()
    
    let cardLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Kefa", size: 30)
        label.textColor = .gray
        label.text = "Оплата картой"
        return label
    }()

    let nalSwitch: UISwitch = {
        let swith = UISwitch()
        swith.translatesAutoresizingMaskIntoConstraints = false
        return swith
    }()
    
    let cardSwitch: UISwitch = {
        let swith = UISwitch()
        swith.translatesAutoresizingMaskIntoConstraints = false
        return swith
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(orderLabel)
        view.addSubview(nameLabel)
        view.addSubview(dopLabel)
        view.addSubview(ingridientFirstLabel)
        view.addSubview(ingridientSecondLabel)
        view.addSubview(ingridientThirdLabel)
        view.addSubview(payButton)
        view.addSubview(nalLabel)
        view.addSubview(cardLabel)
        view.addSubview(nalSwitch)
        view.addSubview(cardSwitch)
        nameLabel.text = nameOrder
        constraintForOrder()
        constraintForName()
        constraintForDop()
        constraintForFirst()
        textLabels()
        constraintButton()
        constraintLabel()
        constraintcardLabel()
        constraintNalSwitch()
        constraintCardSwitch()

    }
    
    private func constraintForOrder() {
        orderLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 14).isActive = true
        orderLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
    }
    
    private func constraintForName() {
        nameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 14).isActive = true
        nameLabel.topAnchor.constraint(equalTo: orderLabel.bottomAnchor, constant: 10).isActive = true
    }
    
    private func constraintForDop() {
        dopLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 14).isActive = true
        dopLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 40).isActive = true
        dopLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -14).isActive = true
    }
    
    private func constraintForFirst() {
        ingridientFirstLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 14).isActive = true
        ingridientFirstLabel.topAnchor.constraint(equalTo: dopLabel.bottomAnchor, constant: 10).isActive = true
        ingridientSecondLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 14).isActive = true
        ingridientSecondLabel.topAnchor.constraint(equalTo: ingridientFirstLabel.bottomAnchor, constant: 10).isActive = true
        ingridientThirdLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 14).isActive = true
        ingridientThirdLabel.topAnchor.constraint(equalTo: ingridientSecondLabel.bottomAnchor, constant: 10).isActive = true
    }
    
    private func constraintButton() {
        payButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 14).isActive = true
        payButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -14).isActive = true
        payButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        payButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        payButton.addTarget(self, action: #selector(payAction), for: .touchUpInside)
    }
    
    private func constraintLabel() {
        nalLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        nalLabel.bottomAnchor.constraint(equalTo: payButton.topAnchor, constant: -20).isActive = true
    }
    
    private func constraintcardLabel() {
        cardLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        cardLabel.bottomAnchor.constraint(equalTo: nalLabel.topAnchor, constant: -20).isActive = true
    }
    
    private func constraintNalSwitch() {
        nalSwitch.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        nalSwitch.centerYAnchor.constraint(equalTo: nalLabel.centerYAnchor).isActive = true
        nalSwitch.addTarget(self, action: #selector(switchOn), for: .allTouchEvents)
    }
    
    private func constraintCardSwitch() {
        cardSwitch.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        cardSwitch.centerYAnchor.constraint(equalTo: cardLabel.centerYAnchor).isActive = true
        cardSwitch.addTarget(self, action: #selector(switchOn), for: .allTouchEvents)
    }
    
    @objc func payAction() {
        showAlert(title: "Заказ оплачен!", message: "Ваш заказ доставят в течение 15 минут!")
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @objc func switchOn() {
        if cardSwitch.isOn {
            nalSwitch.setOn(false, animated: true)
        } else {
            nalSwitch.setOn(true, animated: true)
        }
    }
    
    private func textLabels() {
        for text in 0...ingridients.count {
            if text == 1 {
                ingridientFirstLabel.text = ingridients[text-1]
            }
            if text == 2 {
                ingridientSecondLabel.text = ingridients[text-1]
            }
            if text == 3 {
                ingridientThirdLabel.text = ingridients[text-1]
            }
        }
    }
}
