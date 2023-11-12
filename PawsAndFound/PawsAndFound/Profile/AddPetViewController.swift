//
//  AddPetViewController.swift
//  PawsAndFound
//
//  Created by Jose Baez on 11/11/23.
//

import UIKit
import ParseSwift
import PhotosUI

class AddPetViewController: UIViewController {
    var pets = [Pet]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // TODO: Finish getting the pets information and putting it into the table
    @IBOutlet weak var petPreviewImageView: UIImageView!
    @IBOutlet weak var petNameField: UITextField!
    @IBOutlet weak var petBreedField: UITextField!
    @IBOutlet weak var petDescriptionField: UITextField!
    
    
    @IBAction func onAddPetTapped(_ sender: Any) {
        var pet = Pet()
        pet.petName = petNameField.text
        pet.petBreed = petBreedField.text
        pet.petDesc = petDescriptionField.text
        // TODO: add image
        
        pet.save { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let pet):
                    print("✅ Pet Saved! \(pet)")
                    
                        // Return to previous view controller
                        self?.navigationController?.popViewController(animated: true)
                
                case .failure(let error):
                    self?.showAlert(description: error.localizedDescription)
                }
            }
        }
    }
}

