//
//  LetherboardTableViewController.swift
//  Beastions
//
//  Created by Riccardo Feletig on 22/05/2019.
//  Copyright © 2019 MO2S. All rights reserved.
//

import UIKit

class LetherboardTableViewController: UITableViewController {

    override func viewDidLoad() {
        var letherboardList = [LetherboardModel] ()
        
        super.viewDidLoad()
        
        //inizializzazione di una lista con l'aggiunta di elementi alla lista
        letherboardList = [
            LetherboardModel(Id: 0, Name: "Drughetto", Record: 0, Character: "Drughetto"),
            LetherboardModel(Id: 1, Name: "Scoiattolo", Record: 1, Character: "Scoiattolo")
        ]
        
        //aggiorna la tabella ricaricando le funzioni
        self.tableView.reloadData()
    }
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}
