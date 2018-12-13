
//
//  GWChooseDateViewController.swift
//  GetWork
//
//  Created by Razvan Armeanu on 10/12/2018.
//  Copyright © 2018 Razvan Armeanu. All rights reserved.
//

import UIKit

class GWChooseDateViewController: UIViewController {
    @IBOutlet var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let color : UIColor = .black
        contentView.backgroundColor = color.withAlphaComponent(0)
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func dismissButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
