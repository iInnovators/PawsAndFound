//
//  PetCell.swift
//  PawsAndFound
//
//  Created by Crissy on 11/11/23.
//

import UIKit


class PetCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var petNameLabel: UILabel!
    
    @IBOutlet weak var petBreedLabel: UILabel!
    @IBOutlet weak var petDescriptionLabel: UILabel!
    @IBOutlet weak var petImageView: UIImageView!
    
    
    func configure(with pet: Pet){
        petNameLabel.text = pet.petName
        petBreedLabel.text = pet.petBreed
        petDescriptionLabel.text = pet.petDesc
        // TODO: add image
    }
}
