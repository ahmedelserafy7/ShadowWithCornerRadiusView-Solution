//
//  ViewController.swift
//  ShadowWithCornerRadiusView
//
//  Created by Elser_10 on 1/30/20.
//  Copyright © 2020 Elser_10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let subContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupShadow()
    }
    
    
    func setupShadow() {
        
        view.addSubview(containerView)
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        containerView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        containerView.backgroundColor = .clear
        containerView.layer.shadowColor = UIColor.lightGray.cgColor
        
        // or if you'd like to add shadow color in black, it's what you prefer
        //containerView.layer.shadowColor = UIColor.black.cgColor
        
        containerView.layer.shadowOffset = .zero
        containerView.layer.shadowOpacity = 0.3
        
        // shadow radius is optional, you can add or comment it
        containerView.layer.shadowRadius = 8
        containerView.layer.masksToBounds = false
        
        containerView.addSubview(subContainerView)
        subContainerView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        subContainerView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        subContainerView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        subContainerView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        subContainerView.backgroundColor = .white
        subContainerView.layer.cornerRadius = 8
        subContainerView.layer.masksToBounds = true
        
    }
    
}
