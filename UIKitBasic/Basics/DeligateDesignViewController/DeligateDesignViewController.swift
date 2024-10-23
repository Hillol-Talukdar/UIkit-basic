//
//  DeligateDesignViewController.swift
//  UIKitBasic
//
//  Created by Hillol Talukdar on 7/10/24.
//

import UIKit

class DeligateDesignViewController: UIViewController {
    private var actionButtonView = ActionButtonView()
    private var textLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGroupedBackground
        
        view.addSubview(actionButtonView)
        actionButtonView.layer.shadowColor = UIColor.black.cgColor
        actionButtonView.translatesAutoresizingMaskIntoConstraints = false
        actionButtonView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        actionButtonView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        actionButtonView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        actionButtonView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        actionButtonView.delegae = self
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.topAnchor.constraint(equalTo: actionButtonView.bottomAnchor, constant: 16).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        textLabel.text = "Primary Action Button tapped"
        textLabel.isHidden = true
    }
}

extension DeligateDesignViewController: ActionButtonViewDeligate {
    func onPrimaryButtonTapped() {
        print("DeligateDesignViewController: onPrimaryButtonTapped: ")
        textLabel.isHidden = false
    }
    
    func onSecondaryButtonTapped() {
        print("DeligateDesignViewController: onSecondaryButtonTapped: ")
        textLabel.isHidden = true
    }
}


#Preview{
    DeligateDesignViewController()
}
