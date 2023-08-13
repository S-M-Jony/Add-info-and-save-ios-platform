//
//  ViewController.swift
//  Add info and save
//
//  Created by MD Sakhawat Hosen on 13/8/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gammes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = gammes[indexPath.row]
        return cell!
    }
    
    

    @IBOutlet weak var textBar: UITextField!
    @IBOutlet weak var myTable: UITableView!
    var gammes:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveButton(_ sender: Any) {
        guard let data = textBar.text
        else {
            return
        }
        gammes.append(data)
        let alertTitle = "Savings!"
        let message = "Data Has Been Added Successfully"
        let alertBox = UIAlertController(title: alertTitle, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertBox.addAction(alertAction)
        present(alertBox, animated: true, completion: nil)
        myTable.reloadData()
        textBar.text = " "
    }
}

