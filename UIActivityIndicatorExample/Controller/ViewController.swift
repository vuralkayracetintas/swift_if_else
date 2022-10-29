//
//  ViewController.swift
//  UIActivityIndicatorExample
//
//  Created by Vural Kayra Çetintaş on 29.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
        // Do any additional setup after loading the view.
    }
    @IBAction func didTabLoginButton (_ sender:UIButton){
        if userNameTextField.text == "Vural", passwordTextField.isHidden {
            passwordTextField.isHidden = false
            errorLabel.isHidden = true
            
        } else {
            if userNameTextField.text != "Vural" {
                errorLabel.text = "Kullanıcı Adı alanı yanlış girdiniz veya boş bıraktınız "
                errorLabel.isHidden = false
            } else if !(passwordTextField.isHidden) , passwordTextField.text == "123456"{
                errorLabel.isHidden = true
                activityIndicator.startAnimating()
            } else {
                errorLabel.text = "Hata : Şifreniz yanlış lütfen tekrar deneyiniz."
                errorLabel.isHidden = false
            }
        }
        
        
    }
    
    
}

