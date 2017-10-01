//
//  ViewController.swift
//  Swift4Keyboard1
//
//  Created by 後閑諒一 on 2017/10/01.
//  Copyright © 2017年 ryoichi.gokan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var paswordTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mailTextField.delegate = self
        paswordTextField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        mailTextField.resignFirstResponder()
        paswordTextField.resignFirstResponder()
        
    }
    
    @IBAction func signIn(_ sender: Any) {
        
        // mailとパスワードの値をつなげて表示する
        resultLabel.text = mailTextField.text! + "" + paswordTextField.text!
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // キーボードを閉じる
        textField.resignFirstResponder()
        
        return true
    }
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

