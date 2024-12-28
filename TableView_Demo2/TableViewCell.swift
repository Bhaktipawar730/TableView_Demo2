//
//  TableViewCell.swift
//  TableView_Demo2
//
//  Created by Mac on 27/12/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var arrayOneLabel: UILabel!
    
    @IBOutlet weak var arrayTwoLabel: UILabel!
    
    @IBOutlet var img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
