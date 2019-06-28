//
//  LetherboardModel.swift
//  Beastions
//
//  Created by Riccardo Feletig on 22/05/2019.
//  Copyright © 2019 MO2S. All rights reserved.
//

import Foundation
import Firebase

class LetherboardModel {
    var id : Int?
    var name : String?
    var points : Int?
    var character : String?
    

    init?(snapshot:DataSnapshot){
        let letherboardData = snapshot.value as? [String:Any]
        
        if let letherboardData = letherboardData{
            let character = letherboardData["character"]
            let id = letherboardData["id"]
            let name = letherboardData["name"]
            let points = letherboardData["points"]
        
        
            guard character != nil && id != nil && name != nil && points != nil else {
                return nil
            }
            
            self.character = character as? String
            self.id = id as! Int
            self.name = name as? String
            self.points = points as! Int
        }
    }
}
