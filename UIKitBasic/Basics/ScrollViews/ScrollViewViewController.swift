//
//  ScrollViewViewController.swift
//  UIKitBasic
//
//  Created by Hillol Talukdar on 2/10/24.
//

import UIKit

class ScrollViewViewController: UIViewController {
    private var scrollView = UIScrollView()
    
    private var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.spacing = 16
        return stackView
    }()
    
    private let rectHeight: CGFloat = 200
    private let numberOfRect = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1..<numberOfRect {
            let rect = createRectangle()
            stackView.addArrangedSubview(rect)
        }
        
        scrollView.delegate = self
        
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        scrollView.addSubview(stackView)
        scrollView.centerXAnchor.constraint(equalTo: stackView.centerXAnchor).isActive = true
        
        scrollView.contentSize.height = (rectHeight * CGFloat(numberOfRect)) + 64
    }
    
    private func createRectangle() -> UIView {
        let view = UIView()
        view.widthAnchor.constraint(equalToConstant: rectHeight).isActive = true
        view.heightAnchor.constraint(equalToConstant: rectHeight).isActive = true
        view.backgroundColor = .systemGray
        view.layer.cornerRadius = 16
        return view
    }
}

extension ScrollViewViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("ScrollViewViewController: scrollViewDidScroll")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("ScrollViewViewController: scrollViewDidEndDecelerating")
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("ScrollViewViewController: scrollViewDidEndDragging")
    }
    
}

#Preview{
    ScrollViewViewController()
}
