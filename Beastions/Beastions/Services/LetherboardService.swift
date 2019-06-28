//
//  LetherboardService.swift
//  Beastions
//
//  Created by Riccardo Feletig on 13/06/2019.
//  Copyright © 2019 MO2S. All rights reserved.
//

import Foundation
import Firebase

class LetherboardService{
    static func getLetherboards(complenion: @escaping ([LetherboardModel]) -> Void) -> Void {
        
        let ref = Database.database().reference()
        
        ref.child("LeaderBoard").queryOrdered(byChild: "points").observeSingleEvent(of: .value) { (snapshot) in
            
            var retrievedLetherboards = [LetherboardModel]()
            
            let snapshots = snapshot.children.allObjects as? [DataSnapshot]
            
            if let snapshots = snapshots {
                for snap in snapshots {
                    var letherboard = LetherboardModel(snapshot: snap)
                    
                    if letherboard != nil {
                        retrievedLetherboards.insert(letherboard!, at: 0)
                    }
                }
            }
            complenion(retrievedLetherboards)
        }
    }
    
    
}
