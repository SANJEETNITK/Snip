//
//  SignUpViewController.swift
//  firstApp
//
//  Created by Sanjeet Kumar on 23/08/21.
//

import UIKit

class SignUpVC: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSignUpClick(_ sender: Any) {
        
        let userName = userNameTextField.text
        let email = emailTextField.text
        let password = passwordTextField.text
        
        let isUserNameValid = checkValidUserName(username: userName ?? "")
        let isEmailValid = isValidEmail(email ?? "")
        let isPasswordValid = isValidPassword(password ?? "")
        
        if isUserNameValid && isEmailValid && isPasswordValid {
            // Navigate to the InputDataVC
        } else {
            //
        }
        let vc = (self.storyboard?.instantiateViewController(identifier: "InputDataVC")) as? InputDataVC
        if let vc = vc {
            self.navigationController?.pushViewController(vc, animated: true)
        }
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
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    func isValidPassword(_ password: String) -> Bool {
        let password = password.trimmingCharacters(in: .whitespaces)
        return password.count >= 6
    }
}
