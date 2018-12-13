//
//  GWRegisterViewController.swift
//  GetWork
//
//  Created by Razvan Armeanu on 06/12/2018.
//  Copyright © 2018 Razvan Armeanu. All rights reserved.
//

import UIKit

class GWRegisterViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dobTextField: UITextField!
    
    private var datePicker : UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        
        datePicker?.addTarget(self, action: #selector(dateChanged(datePicker:)), for: .valueChanged)
        
        dobTextField.inputView = datePicker

//        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: false)
    }

    @IBAction func startTimeButtonPressed(_ sender: Any) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let pvc = storyboard.instantiateViewController(withIdentifier: "GWChooseDateViewController") as! GWChooseDateViewController
        
        
        present(pvc, animated: true, completion: nil)
    }

    @objc func dateChanged(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/YYYY"
        dobTextField.text = dateFormatter.string(from: datePicker.date)
    }

}
    
