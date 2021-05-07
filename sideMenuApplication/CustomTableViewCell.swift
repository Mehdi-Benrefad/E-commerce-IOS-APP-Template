//
//  CustomTableViewCell.swift
//  sideMenuApplication
//
//  Created by Mehdi Benrefad on 07/05/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

   
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var MyCell: CustomTableViewCell!
    
    
   
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
       override func awakeFromNib() {
           super.awakeFromNib()
           // Initialization code
          // addShadow()
       }
       
       //on cofigure notre vue customisee
       func configure(title:String,image:String){
           
        self.imageCell.image = UIImage(named:image)
        self.title.text=title
           // subtitleLabel.text=String(year)
       }
       
    /*
       private func addShadow() {
           MyCell.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.7).cgColor
           MyCell.layer.shadowRadius = 2.0
           MyCell.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
           MyCell.layer.shadowOpacity = 2.0
       }
    */
       
}
