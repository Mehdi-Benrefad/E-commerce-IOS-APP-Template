//
//  SideMenuController.swift
//  sideMenuApplication
//
//  Created by Mehdi Benrefad on 06/05/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import UIKit

class SideMenuController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //change the height of tableViewCell
        tableView.rowHeight = 90
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
      let cellule = list[indexPath.row]
      guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as? CustomTableViewCell else {
                 return UITableViewCell()
             }
        cell.configure(title : cellule.libele)
              return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch list[indexPath.row].libele{
            case "Home" :
                print("hellooo")
                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let newViewController = storyBoard.instantiateViewController(withIdentifier: "HomeViewController") as! UINavigationController
                newViewController.modalPresentationStyle = .fullScreen
                self.present(newViewController, animated: true, completion: nil)
            
            case "Profile":
                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let newViewController = storyBoard.instantiateViewController(withIdentifier: "ProfileViewController") as! UINavigationController
                newViewController.modalPresentationStyle = .fullScreen
                self.present(newViewController, animated: true, completion: nil)
        default:
            print("other")
        }
    }
   
    
    
}
