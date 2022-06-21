//
//  DetailController.swift
//  MVVM Learning
//
//  Created by CSPrasad on 21/06/22.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var labelError: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelCell: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelAddress: UILabel!
    
    var personDetails: PersonModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let person = personDetails {
            updateData(person: person)
        } else {
            handleNilValue()
        }
    }
    
    func updateData(person: PersonModel) {
        labelName.text = person.name
        labelCell.text = "\(person.cell)"
        labelEmail.text = person.email
        labelAddress.text = person.address
    }
    
    func handleNilValue() {
        labelError.isHidden = false
        labelName.isHidden = true
        labelCell.isHidden = true
        labelEmail.isHidden = true
        labelAddress.isHidden = true
        labelError.text = "Error getting person details."
    }
    
    @IBAction func btnBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
