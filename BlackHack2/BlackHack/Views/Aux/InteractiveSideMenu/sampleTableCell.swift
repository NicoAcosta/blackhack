//
//  sampleTableCell.swift
//  BlackHack
//
//  Created by Nicolás Acosta on 13/11/2020.
//

import UIKit

class SampleTableCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet private weak var selectedView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        selectedView.backgroundColor = selected ? UIColor.white : UIColor.clear
        titleLabel.textColor = selected ? UIColor.white : UIColor.systemGray2
        titleLabel.font = selected ? UIFont(name: "GothamMedium", size: 30) : UIFont(name: "GothamLight", size: 25)
        
    }
}
