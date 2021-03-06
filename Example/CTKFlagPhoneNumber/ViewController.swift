//
//  ViewController.swift
//  CTKFlagPhoneNumber
//
//  Created by grifas on 06/08/2017.
//  Copyright (c) 2017 grifas. All rights reserved.
//

import UIKit
import CTKFlagPhoneNumber

class ViewController: UIViewController {
	
	var phoneNumberTextField: CTKFlagPhoneNumberTextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		phoneNumberTextField = CTKFlagPhoneNumberTextField(frame: CGRect(x: 0, y: 0, width: view.bounds.width - 16, height: 50))
		phoneNumberTextField.center = view.center
		view.addSubview(phoneNumberTextField)

		let button = UIButton(type: .roundedRect)
		button.frame = CGRect(x: 0, y: 0, width: 50, height: 44)
		button.center = CGPoint(x: view.center.x, y: view.center.y + 60)
		button.setTitle("Ok", for: .normal)
		button.backgroundColor = .green
		button.addTarget(self, action: #selector(validate), for: .touchUpInside)
		view.addSubview(button)
	}
	
	func validate() {
		let phoneNumber: String? = phoneNumberTextField.getPhoneNumber()
		
		print(phoneNumber)
	}
}

