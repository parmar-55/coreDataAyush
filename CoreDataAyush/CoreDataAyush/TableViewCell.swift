//
//  TableViewCell.swift
//  CoreDataAyush
//
//  Created by mac on 29/03/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblAddress: UILabel!
    
    @IBOutlet weak var lblCity: UILabel!
    
    @IBOutlet weak var lblMobile: UILabel!
 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
