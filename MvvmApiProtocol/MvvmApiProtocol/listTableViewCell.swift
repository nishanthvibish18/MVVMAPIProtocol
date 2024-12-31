//
//  listTableViewCell.swift
//  MvvmApiProtocol
//
//  Created by Nishanth on 19/07/24.
//

import UIKit

class listTableViewCell: UITableViewCell {

    @IBOutlet weak var dataNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
