//
//  LetherboardTableViewController.swift
//  Beastions
//
//  Created by Riccardo Feletig on 22/05/2019.
//  Copyright © 2019 MO2S. All rights reserved.
//

import UIKit

class LetherboardTableViewController: UIViewController {
    var letherboardList = [LetherboardModel]()

    
    @IBOutlet weak var LetherboardTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LetherboardTableView.delegate = self
        LetherboardTableView.dataSource = self
        
        //inizializzazione di una lista con l'aggiunta di elementi alla lista
        self.letherboardList = [
            LetherboardModel(Id: 0, Name: "Francesco", Points: 10, Character: "Drughetto"),
            LetherboardModel(Id: 1, Name: "Riccardo", Points: 20, Character: "Scoiattolo")
        ]
        
        //aggiorna la tabella ricaricando le funzioni
        self.LetherboardTableView.reloadData()
    }
}
extension LetherboardTableViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return letherboardList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = LetherboardTableView.dequeueReusableCell(withIdentifier: "Cella", for: indexPath)as! LetherboardCell
        
        cell.nameLabel.text = letherboardList[indexPath.row].Name
        cell.characterLabel.text = letherboardList[indexPath.row].Character
        cell.pointsLabel.text = "\(letherboardList[indexPath.row].Points)"
        
        return cell
    }
}
