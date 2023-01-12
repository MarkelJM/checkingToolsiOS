//
//  TableViewController.swift
//  checkTools
//
//  Created by Markel Juaristi on 3/1/23.
//

import UIKit

struct CustomItem {
    let image: UIImage
    let text: String
}

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    //let singleRows = ["lunes", "martes", "miercoles", "jueves","viernes", "sabado", "domingo"]
    let customRows = [
        CustomItem(image: UIImage(systemName: "pencil.circle")!, text: "lunes"),
        CustomItem(image: UIImage(systemName: "trash.circle")!, text: "lunes"),
        CustomItem(image: UIImage(systemName: "folder.circle")!, text: "lunes"),
        CustomItem(image: UIImage(systemName: "paperplane.circle")!, text: "lunes"),
        CustomItem(image: UIImage(systemName: "doc.circle")!, text: "vierbnes"),
        CustomItem(image: UIImage(systemName: "terminal")!, text: "sabado"),
        CustomItem(image: UIImage(systemName: "book.closed")!, text: "domingo")
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /* con esto hacemos que la clase TableviewController herede de UITAbleview delegate y datasource*/
        tableView.delegate = self
        tableView.dataSource = self
        
        //tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        /* instanciar las cell*/
        let xib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: "customTableViewCell")
    }
    //Delegate and DataSource methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customRows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /*
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        /* indexPath es la posivcion de la celda*/
        let weekDayName = singleRows[indexPath.row] /* el parametro row nos mostrara la misma cantidad de elementos de tenemos en la lista singlerows*/
       
        cell.textLabel?.text = weekDayName
        return cell
         */
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customTableViewCell", for: indexPath) as! TableViewCell
        let customItem = customRows[indexPath.row]
        cell.iconImageView.image = customItem.image
        cell.titleLabel.text = customItem.text
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    



    

}
