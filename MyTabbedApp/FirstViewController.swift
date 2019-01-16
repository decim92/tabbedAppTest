//
//  FirstViewController.swift
//  MyTabbedApp
//
//  Created by Douglas on 1/14/19.
//  Copyright © 2019 Douglas. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var numbersTableView: UITableView!
    var dataSource:[Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fillDataSource()
        numbersTableView.reloadData()
    }

    func fillDataSource() {
        for i in 0..<200 {
            if i % 2 == 0 {
                dataSource.append(i)
            }
        }
    }
}

extension FirstViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BaseTableViewCell", for: indexPath) as! BaseTableViewCell
        cell.aLabel.text = "\(dataSource[indexPath.row])"
        return cell
    }
}
