//
//  LoginViewController.swift
//  firstApp
//
//  Created by Sanjeet Kumar on 20/08/21.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonClick(_ sender: Any) {
        let userName = (emailTextField.text)!
        var isValidUserName = checkValidUserName(username: userName)
        if isValidUserName {
            // Navigate to the next page
        } else {
            // Show an error message
        }
        let vc = (self.storyboard?.instantiateViewController(identifier: "InputDataVC")) as? InputDataVC
        if let vc = vc {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func signUpButtonClick(_ sender: Any) {
        
    }
    
    func checkValidUserName(username: String) -> Bool {
        
        var containsCapitalLetter = false
        var containsSmallLetter = false
        var containsNumber = false
        var containsSpecialSymbol = false
        
        for character in username {
            if character >= "A" && character <= "Z" {
                containsCapitalLetter = true
            } else if character >= "a" && character <= "z" {
                containsSmallLetter = true
            } else if character >= "0" && character <= "9" {
                containsNumber = true
            } else {
                containsSpecialSymbol = true
            }
        }
        
        return containsCapitalLetter && containsSmallLetter && containsNumber && containsSpecialSymbol && username.count >= 8 && username.count <= 16
    }
}
