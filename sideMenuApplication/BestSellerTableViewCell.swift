//
//  BestSellerTableViewCell.swift
//  sideMenuApplication
//
//  Created by Mehdi Benrefad on 08/05/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import UIKit

class BestSellerTableViewCell: UITableViewCell {

    @IBOutlet weak var sellerName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(name: String) {
        sellerName.text = name
    }
}
