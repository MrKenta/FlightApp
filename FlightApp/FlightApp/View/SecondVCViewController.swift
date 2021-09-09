//
//  SecondVCViewController.swift
//  FlightApp
//
//  Created by Raman Krutsiou on 9/9/21.
//

import UIKit

class SecondVCViewController: UIViewController {
    
    private let background = UIImageView()
    private let destinationField = UITextField()
    private let originField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.destinationField.delegate = self
        self.originField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.view.addSubview(background)
        
    }
    
   private func layoutBackground() {
    background.translatesAutoresizingMaskIntoConstraints = false
    background.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
    }

    
    
}



extension SecondVCViewController : UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
    
    
}
