//
//  ViewController.swift
//  collageProfileBuilder
//
//  Created by Hussain Haq  on 2/7/17.
//  Copyright © 2017 Hussain Haq . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    @IBOutlet weak var myTableView: UITableView!
  

    var myCollages:[CollagesClass] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollages.append(CollagesClass(Name: "Loyola", State: "Illinios", NOP: "5",Image: UIImage(named: "Loyola")!))
        
        myCollages.append(CollagesClass(Name: "North Western", State: "Illinios", NOP:"5", Image: UIImage(named: "Northwestern")!))
        
        myCollages.append(CollagesClass(Name: "UIC", State: "Illinios", NOP:"5", Image: UIImage(named: "UIC")!))
    }
    @IBAction func addButton(_ sender: Any) {
        let alert = UIAlertController(title:"add Collage", message: nil, preferredStyle: .alert)
        
        alert.addTextField{ (nameTextField) in nameTextField.placeholder = "add Collage"
        }
        
        alert.addTextField{ (stateTextField) in stateTextField.placeholder = "add State"
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(cancelAction)
        
        let addAction = UIAlertAction(title: "Add", style: .default) {
            (action) in
            let stateTextField = alert.textFields?[0]
            let nameTextField = alert.textFields?[1]
            
            
            self.myCollages.append(CollagesClass(Name: (nameTextField?.text)!, State: (stateTextField?.text)!))
            
            self.myTableView.reloadData()

    }
        alert.addAction(addAction)
        
        present(alert, animated: true, completion: nil)
    }

    // required function - sets number of rows in TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return myCollages.count
    }

    //required Function
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = myCollages[indexPath.row].name
        cell.detailTextLabel?.text = myCollages[indexPath.row].state
        
        return cell
    }
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
            if (editingStyle == .delete)
            {
                myCollages.remove(at: indexPath.row)
                myTableView.reloadData()
            }
    }
           override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                
                let DetailView = segue.destination as!DetailViewController
                var selectedRow = myTableView.indexPathForSelectedRow?.row
                
                DetailView.collageDetail = myCollages[selectedRow!]
                
                }
            }
