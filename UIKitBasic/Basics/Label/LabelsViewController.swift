//
//  LabelsViewController.swift
//  UIKitBasic
//
//  Created by Hillol Talukdar on 24/9/24.
//

import UIKit

class LabelsViewController: UIViewController {
    private var textLabel = UILabel()
    
    private var subtitleLabel: UILabel = {
       let label = UILabel()
        label.text = "this is subtitle"
        label.textColor = .gray
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel.text = "Hello, World"
        textLabel.font = UIFont.systemFont(ofSize: 20)
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(subtitleLabel)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 0).isActive = true
        subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }

}

#Preview {
    LabelsViewController()
}
