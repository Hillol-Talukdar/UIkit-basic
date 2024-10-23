//
//  ImagesViewController.swift
//  UIKitBasic
//
//  Created by Hillol Talukdar on 26/9/24.
//

import UIKit

class ImagesViewController: UIViewController {
    private var imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.tintColor = .red
        imageView.image = UIImage(systemName: "paperplane")
        
        
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        
  
    }

}


#Preview {
    ImagesViewController()
}
