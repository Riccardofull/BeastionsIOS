//
//  LetherboardCell.swift
//  Beastions
//
//  Created by Riccardo Feletig on 29/05/2019.
//  Copyright © 2019 MO2S. All rights reserved.
//

import UIKit

class LetherboardCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var characterLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setLabel(_ letherboard:LetherboardModel){
        nameLabel.text = letherboard.name
        characterLabel.text = letherboard.character
        pointsLabel.text = "\(letherboard.id as! Int)"
    }
}
