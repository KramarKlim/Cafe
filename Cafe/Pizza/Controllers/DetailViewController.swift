//
//  DetailViewController.swift
//  Pizza
//
//  Created by Клим on 13.07.2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    var name: String?
    var image: UIImage?
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Kefa", size: 30)
        label.textColor = .gray
        return label
    }()
    
    let foodImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let cheeseLabel: UILabel = {
        let label = UILabel()
        label.text = "Сыр"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Kefa", size: 20)
        return label
    }()
    
    let cheeseSwitch: UISwitch = {
        let swit = UISwitch()
        swit.translatesAutoresizingMaskIntoConstraints = false
        return swit
    }()
    
    let meatLabel: UILabel = {
        let label = UILabel()
        label.text = "Бекон"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Kefa", size: 20)
        return label
    }()
    
    let meatSwitch: UISwitch = {
        let swit = UISwitch()
        swit.translatesAutoresizingMaskIntoConstraints = false
        return swit
    }()
    
    let mushLabel: UILabel = {
        let label = UILabel()
        label.text = "Грибы"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Kefa", size: 20)
        return label
    }()
    
    let mushSwitch: UISwitch = {
        let swit = UISwitch()
        swit.translatesAutoresizingMaskIntoConstraints = false
        return swit
    }()
    
    let nextButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Выбрать", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 10
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(nameLabel)
        view.addSubview(foodImage)
        view.addSubview(cheeseLabel)
        view.addSubview(cheeseSwitch)
        view.addSubview(meatLabel)
        view.addSubview(meatSwitch)
        view.addSubview(mushLabel)
        view.addSubview(mushSwitch)
        view.addSubview(nextButton)
        nameLabel.text = name
        foodImage.image = image
        constraintForNameLabel()
        constraintForImage()
        constraintCheese()
        constraintCheeseSwitch()
        constraintForMeatLabel()
        constraintForMeatSwitch()
        constraintForMushLabel()
        constraintForMushSwitch()
        constraintButton()
    }
    
    private func constraintForNameLabel() {
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
    }
    
    private func constraintForImage() {
        foodImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        foodImage.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5).isActive = true
        foodImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 14).isActive = true
        foodImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -14).isActive = true
        foodImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2).isActive = true
    }
    
    private func constraintCheese() {
        cheeseLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 14).isActive = true
        cheeseLabel.topAnchor.constraint(equalTo: foodImage.bottomAnchor, constant: 20).isActive = true
    }
    
    private func constraintCheeseSwitch() {
        cheeseSwitch.centerYAnchor.constraint(equalTo: cheeseLabel.centerYAnchor).isActive = true
        cheeseSwitch.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -14).isActive = true
    }
    
    private func constraintForMeatLabel() {
        meatLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 14).isActive = true
        meatLabel.topAnchor.constraint(equalTo: cheeseLabel.bottomAnchor, constant: 20).isActive = true
    }
    
    private func constraintForMeatSwitch() {
        meatSwitch.centerYAnchor.constraint(equalTo: meatLabel.centerYAnchor).isActive = true
        meatSwitch.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -14).isActive = true
    }
    private func constraintForMushLabel() {
        mushLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 14).isActive = true
        mushLabel.topAnchor.constraint(equalTo: meatLabel.bottomAnchor, constant: 20).isActive = true
    }
    
    private func constraintForMushSwitch() {
        mushSwitch.centerYAnchor.constraint(equalTo: mushLabel.centerYAnchor).isActive = true
        mushSwitch.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -14).isActive = true
    }
    private func constraintButton() {
        nextButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 14).isActive = true
        nextButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -14).isActive = true
        nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextButton.addTarget(self, action: #selector(choosenItem), for: .touchUpInside)
    }
    
    @objc func choosenItem() {
        performSegue(withIdentifier: "payment", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "payment" {
            guard let paymentVC = segue.destination as? PaymentViewController else { return }
            paymentVC.nameOrder = nameLabel.text
            if cheeseSwitch.isOn {
                paymentVC.ingridients.append(cheeseLabel.text)
            }
            if meatSwitch.isOn {
                paymentVC.ingridients.append(meatLabel.text)
            }
            if mushSwitch.isOn {
                paymentVC.ingridients.append(mushLabel.text)
            }
        }
    }
}
