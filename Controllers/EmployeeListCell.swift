//
//  EmployeeListCell.swift
//  coreData2
//
//  Created by Apple on 09/02/22.
//

import UIKit

class EmployeeListCell: UITableViewCell {

    @IBOutlet weak var imageCellOutlet: UIImageView!
    
    @IBOutlet weak var nameLabelOutlet: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
