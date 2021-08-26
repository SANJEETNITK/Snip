//
//  InputCompleteVC.swift
//  firstApp
//
//  Created by Sanjeet Kumar on 24/08/21.
//

import UIKit

class InputCompleteVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        navigateToTabbarVC()
    }
    
    func navigateToTabbarVC() {
        let vc = (self.storyboard?.instantiateViewController(identifier: "TabbarVC")) as? TabbarVC
            if let vc = vc {
              self.navigationController?.pushViewController(vc, animated: true)
            }
    }

}
