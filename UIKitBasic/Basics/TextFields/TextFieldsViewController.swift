//
//  TextFieldsViewController.swift
//  UIKitBasic
//
//  Created by Hillol Talukdar on 30/9/24.
//

import UIKit

class TextFieldsViewController: UIViewController {
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.tintColor = .systemBackground
        textField.placeholder = "Search..."
        textField.borderStyle = .roundedRect
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.delegate = self
        return textField
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        textField.addTarget(self, action: #selector(onEditingChanged), for: .editingChanged)
        
        view.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textField.widthAnchor.constraint(equalToConstant: view.frame.width - 64).isActive = true
        
        
    }
    
    @objc func onEditingChanged(_ sender: UITextField) {
        print("TextFieldsViewController: TextField text is \(sender.text)")
    }
    
}

extension TextFieldsViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("TextFieldsViewController: Return key tapped...")
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("TextFieldsViewController: TextField did begin editing...")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("TextFieldsViewController: TextField did end editing...")
    }
}

#Preview {
    TextFieldsViewController()
}
