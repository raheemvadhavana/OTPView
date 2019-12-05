//
//  ViewController.swift
//  RV_OTP_View
//
//  Created by admin on 04/12/19.
//  Copyright © 2019 ACME iOS TEAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var otpView: RVOTPView!

    var otpString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        otpView.otpTextFieldsCount = 6
        otpView.otpTextFieldActiveBorderColor = UIColor.darkGray
        otpView.otpTextFieldDefaultBorderColor = UIColor.lightGray
        otpView.otpTextFieldFontColor = UIColor.black
        otpView.cursorColor = UIColor.red
        otpView.otpTextFieldBorderWidth = 2
        otpView.otpEnteredString = { otp in
            print("The OTP is \(otp)")
            
            let alert = UIAlertController(title: "Alert", message: "OTP is \(otp)", preferredStyle: UIAlertController.Style.alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }
    }

    override func viewDidLayoutSubviews() {
         otpView.initializeUI()
    }

}

