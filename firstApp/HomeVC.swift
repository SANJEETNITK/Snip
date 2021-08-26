//
//  HomeVC.swift
//  firstApp
//
//  Created by Sanjeet Kumar on 24/08/21.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var dataTable: UITableView!
    
    let names: [String] = ["Sanjeet", "Vipul", "Sachin", "Shobhakar", "Ujjwal"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dataTable.delegate = self
        dataTable.dataSource = self
    }
}

extension HomeVC: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//
//    }
}

extension HomeVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomCell
//        cell?.textLabel?.text = names[indexPath.row]
        cell?.userName.text = names[indexPath.row]
        
        return cell!
    }
    
    
}
