//
//  ButtonViewController.swift
//  UIKitBasic
//
//  Created by Hillol Talukdar on 25/9/24.
//

import UIKit

class ButtonViewController: UIViewController {
    
    private lazy var showNameButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show Name", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(onShowNameTapped), for: .touchUpInside)
        return button
    }()
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Hi, Hillol"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isHidden = true
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        showNameButton.addTarget(self, action: #selector(onShowNameTapped), for: .touchUpInside)
        
        view.addSubview(showNameButton)
        showNameButton.widthAnchor.constraint(equalToConstant: 350).isActive = true
        showNameButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        showNameButton.backgroundColor = .systemBlue
        showNameButton.layer.cornerRadius = 10
        showNameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showNameButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        view.addSubview(nameLabel)
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: showNameButton.bottomAnchor, constant: 16).isActive = true
        
    }
    
    @objc func onShowNameTapped() {
        nameLabel.isHidden.toggle()
        let title = nameLabel.isHidden ? "Show Name" : "Hide Name"
        showNameButton.setTitle(title, for: .normal)
    }
}

#Preview {
    ButtonViewController()
}
