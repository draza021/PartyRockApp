//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Drago on 1/17/17.
//  Copyright © 2017 Novotek. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        //todo set image from URL
    }

}
