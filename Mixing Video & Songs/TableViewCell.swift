//
//  TableViewCell.swift
//  Mix_vm
//
//  Created by abdalrahman essam  on 3/21/18.
//  Copyright © 2018 abdalrahman essam . All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var SongerName: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var index: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
