//
//  InputExperienceVC.swift
//  firstApp
//
//  Created by Sanjeet Kumar on 24/08/21.
//

import UIKit

class InputExperienceVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func skipButtonClick(_ sender: Any) {
        let vc = (self.storyboard?.instantiateViewController(identifier: "InputCompleteVC")) as? InputCompleteVC
            if let vc = vc {
              self.navigationController?.pushViewController(vc, animated: true)
            }
    }
    
}
