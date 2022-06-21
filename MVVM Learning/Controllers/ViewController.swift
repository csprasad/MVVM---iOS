//
//  ViewController.swift
//  MVVM Learning
//
//  Created by CSPrasad on 21/06/22.
//

import UIKit

protocol personViewControllerDelegate {
    func recieveData(person: PersonModel)
    func showError(error: String)
}

class ViewController: UIViewController, personViewControllerDelegate {
    
    @IBOutlet weak var labelError: UILabel!
    @IBOutlet weak var TxtFldId: UITextField!
    
    
    
    var viewModel = personViewModel()
    let activityIndicator = UIActivityIndicatorView()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        labelError.isHidden = true
        self.TxtFldId.text = ""
    }
    
    @IBAction func btnLogin(_ sender: UIButton) {
        activityIndicator.startAnimating()
        labelError.isHidden = true
        viewModel.sendData(id: TxtFldId.text ?? "")
    }

    func recieveData(person: PersonModel) {
        print("Person Information \(person)")
        activityIndicator.stopAnimating()
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailController") as! DetailController
        vc.personDetails = person
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func showError(error: String) {
        print("Error \(error)")
        labelError.isHidden = false
        labelError.text = error
    }

}

