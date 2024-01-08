//
//  USerProfileViewController.swift
//  HomeWork1(6)
//
//  Created by User on 8/1/24.
//

import UIKit

class UserProfileViewController: UIViewController {

    var name: String?

    let nameLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    let surnameLabel: UILabel = {
        let label = UILabel()
        label.text = "Surname: Doe"
        return label
    }()

    let phoneLabel: UILabel = {
        let label = UILabel()
        label.text = "Phone: 123456789"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        view.addSubview(nameLabel)
        view.addSubview(surnameLabel)
        view.addSubview(phoneLabel)

        setupConstraints()

         nameLabel.text = "Name: \(name ?? "")"
    }

    private func setupConstraints() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        surnameLabel.translatesAutoresizingMaskIntoConstraints = false
        phoneLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            surnameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            surnameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            surnameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            phoneLabel.topAnchor.constraint(equalTo: surnameLabel.bottomAnchor, constant: 20),
            phoneLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            phoneLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
}
