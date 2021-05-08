//
//  BestSellersController.swift
//  sideMenuApplication
//
//  Created by Mehdi Benrefad on 08/05/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import UIKit

class BestSellersController: UIViewController , UITableViewDataSource {
    
    var sellers = ["Mehdi","Mehdi","Mehdi","Mehdi","Mehdi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sellers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MysellersCell", for: indexPath) as? BestSellerTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(name: sellers[indexPath.row])
        //cell.textLabel?= sellers[IndexPath.row]!
        return cell
    }
    
   

}
