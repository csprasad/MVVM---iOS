//
//  PersonViewModel.swift
//  MVVM Learning
//
//  Created by CSPrasad on 21/06/22.
//

import Foundation


protocol personViewModelDelegate {
    func sendData(id: String)
}

class personViewModel: personViewModelDelegate {
    
    var delegate: personViewControllerDelegate?
    
    func sendData(id: String) {
        
        switch id {
            case "A":
                delegate?.recieveData(person: personData[0])
            case "B":
                delegate?.recieveData(person: personData[1])
            case "C":
                delegate?.recieveData(person: personData[2])
            default:
                delegate?.showError(error: "User not found.")
                break
        }
    }
}


var personData = [PersonModel(isLogin: true, id: "A", name: "Devid", email: "devid@gg.com", cell: 02302030, address: "New Yorl", height: 6.2),
                  PersonModel(isLogin: false, id: "B", name: "levid", email: "levid@gg.com", cell: 5678799, address: "melborn", height: 5.9),
                  PersonModel(isLogin: true, id: "C", name: "kevid", email: "kevid@gg.com", cell: 190099, address: "San fran", height: 4.9)]



