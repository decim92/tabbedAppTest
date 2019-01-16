//
//  ThirdViewController.swift
//  MyTabbedApp
//
//  Created by Douglas on 1/14/19.
//  Copyright © 2019 Douglas. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    

    @IBAction func onShowAlertButtonTapped(_ sender: Any) {
        showAlertWith(style: .alert)
    }
    
    
    @IBAction func onShowActionSheetButtonTapped(_ sender: Any) {
        showAlertWith(style: .actionSheet)
    }
    
    func showAlertWith(style: UIAlertController.Style) {
        let alert = UIAlertController(title: "", message: "Alert", preferredStyle: style)
        let okAction = UIAlertAction(title: "Okay", style: .default) { (action) in
            print(action.title!)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (action) in
            print(action.title!)
        }
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
