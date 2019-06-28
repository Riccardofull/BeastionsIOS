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
        
        LetherboardService.getLetherboards{(letherboardList) in
            self.letherboardList = letherboardList
            self.LetherboardTableView.reloadData()
        }
        
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
        
        let letherboard = letherboardList[indexPath.row]
        cell.setLabel(letherboard)
        
        return cell
    }
}
