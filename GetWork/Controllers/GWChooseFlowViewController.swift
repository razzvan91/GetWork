//
//  GWChooseFlowViewController.swift
//  GetWork
//
//  Created by Razvan Armeanu on 03/12/2018.
//  Copyright © 2018 Razvan Armeanu. All rights reserved.
//

import UIKit
import Firebase

class GWChooseFlowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    @IBAction func customerButtonPressed(_ sender: Any) {
    }
    
    @IBAction func workerButtonPressed(_ sender: Any) {
        
        if Auth.auth().currentUser != nil {
            //TODO: Push the Requests Screen
            print("Already Loged In")
        } else {
            if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "GWLoginTableViewController") as? GWLoginTableViewController{
                if let nav = navigationController {
                    nav.pushViewController(vc, animated: true)
                }
            }
    }
}
}

