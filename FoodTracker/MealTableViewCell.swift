//
//  MealTableViewCell.swift
//  FoodTracker
//
//  Created by Minisce, Mark on 2/20/17.
//
//

import UIKit

class MealTableViewCell: UITableViewCell {
    
    //MARK: properties
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
