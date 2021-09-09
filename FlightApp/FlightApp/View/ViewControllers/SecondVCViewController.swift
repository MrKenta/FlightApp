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
    private let dateField = UITextField()
    private let datePicker = UIDatePicker()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.destinationField.delegate = self
        self.originField.delegate = self
        self.dateField.inputView = datePicker
        datePicker.datePickerMode = .date
        self.originField.tag = 0
        self.destinationField.tag = 1
        self.dateField.tag = 2
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.view.addSubview(background)
        self.view.addSubview(destinationField)
        self.view.addSubview(originField)
        self.view.addSubview(dateField)
        layoutBackground()
        layoutFields()
    }
    
}



extension SecondVCViewController : UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
    
    
}

extension SecondVCViewController {
    
   private func layoutBackground() {
    background.translatesAutoresizingMaskIntoConstraints = false
    background.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
    background.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
    background.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
    background.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
    let image = UIImage(named: "background")
    background.image = image
    background.contentMode = .scaleAspectFill
}
    
    private func layoutFields () {
        
        destinationField.translatesAutoresizingMaskIntoConstraints = false
        originField.translatesAutoresizingMaskIntoConstraints = false
        
        destinationField.backgroundColor = .white
        originField.backgroundColor = .white
        
        
        // Destination field layout
        destinationField.topAnchor.constraint(equalTo: self.originField.bottomAnchor, constant: 50).isActive = true
        destinationField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        destinationField.widthAnchor.constraint(equalToConstant: self.view.bounds.width-100).isActive = true
        destinationField.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        // Original field layout
        originField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150).isActive = true
        originField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        originField.widthAnchor.constraint(equalToConstant: self.view.bounds.width-100).isActive = true
        originField.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        originField.placeholder = "Departure from"
        destinationField.placeholder = "Arrival in"
        
        // Date field layout
        dateField.translatesAutoresizingMaskIntoConstraints = false
        dateField.topAnchor.constraint(equalTo: self.destinationField.bottomAnchor, constant: 50).isActive = true
        dateField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        dateField.widthAnchor.constraint(equalToConstant: self.view.bounds.width/3).isActive = true
        dateField.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
       }
}
