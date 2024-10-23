//
//  ViewController.swift
//  UIKitBasic
//
//  Created by Hillol Talukdar on 23/9/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var primaryButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
       
        greetingLabel.textAlignment  = .center
    }

    func greetuser(_ name: String) {
        greetingLabel.text = "Hello, \(name)!"
    }

    @IBAction func primaryButtonTapped(_ sender: Any) {
        greetuser("Hillol")
        view.backgroundColor = .white
    }
}

