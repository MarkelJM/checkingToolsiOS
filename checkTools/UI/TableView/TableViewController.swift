//
//  TableViewController.swift
//  checkTools
//
//  Created by Markel Juaristi on 3/1/23.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    let singleRows = ["lunes", "martes", "miercoles", "jueves","viernes", "sabado", "domingo"]

    override func viewDidLoad() {
        super.viewDidLoad()
        /* con esto hacemos que la clase TableviewController herede de UITAbleview delegate y datasource*/
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    
    }
    //Delegate and DataSource methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return singleRows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        /* indexPath es la posivcion de la celda*/
        let weekDayName = singleRows[indexPath.row] /* el parametro row nos mostrara la misma cantidad de elementos de tenemos en la lista singlerows*/
       
        cell.textLabel?.text = weekDayName
        return cell
    }
    



    

}
