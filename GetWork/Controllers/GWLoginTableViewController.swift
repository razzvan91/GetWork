//
//  GWLoginTableViewController.swift
//  GetWork
//
//  Created by Razvan Armeanu on 06/12/2018.
//  Copyright © 2018 Razvan Armeanu. All rights reserved.
//

import UIKit

class GWLoginTableViewController: UITableViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var emailDescriptionLabel: UILabel!
    @IBOutlet weak var emailSeparatorViewHeight: NSLayoutConstraint!
    @IBOutlet weak var emailContainerView: UIView!
    @IBOutlet weak var emailDescriptionLabelBottom: NSLayoutConstraint!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordDescriptionLabel: UILabel!
    @IBOutlet weak var passwordSeparatorViewHeight: NSLayoutConstraint!
    @IBOutlet weak var passwordContainerView: UIView!
    @IBOutlet weak var passwordDescriptionLabelBottom: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        configureUI()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }
    
    func configureUI(){
        emailDescriptionLabel.text = NSLocalizedString("Enter Email", comment: "")
        emailDescriptionLabel.font = self.emailDescriptionLabel.font.withSize(18)
        
        passwordDescriptionLabel.text = NSLocalizedString("Enter Passw0rd", comment: "")
        self.passwordDescriptionLabel.font = self.emailDescriptionLabel.font.withSize(18)
    }
    
    //MARK: Take care of textfield Animations
    func animateTextFieldsWithBeginEditingTextField(_ textField: UITextField){
        if textField == emailTextField{
            emailContainerView.layoutIfNeeded()
            UIView.animate(withDuration: 0.3) {
                self.emailDescriptionLabelBottom.constant = 30
                self.emailDescriptionLabel.text = NSLocalizedString("Email", comment: "")
                self.emailDescriptionLabel.font = self.emailDescriptionLabel.font.withSize(14)
                self.emailTextField.font = self.emailTextField.font?.withSize(18)
                self.emailSeparatorViewHeight.constant = 2
                self.emailContainerView.layoutIfNeeded()
            }
            
        }
        
        if textField == passwordTextField{
            passwordContainerView.layoutIfNeeded()
            UIView.animate(withDuration: 0.3) {
                self.passwordDescriptionLabelBottom.constant = 30
                self.passwordDescriptionLabel.text = NSLocalizedString("Password", comment: "")
                self.passwordDescriptionLabel.font = self.emailDescriptionLabel.font.withSize(14)
                self.passwordTextField.font = self.emailTextField.font?.withSize(18)
                self.passwordSeparatorViewHeight.constant = 2
                self.passwordContainerView.layoutIfNeeded()
            }
            
            passwordContainerView.layoutIfNeeded()
        }
    }
    
    func animateTextFieldsWithEndEditingTextField(_ textField: UITextField){
        if textField == emailTextField{
            emailContainerView.layoutIfNeeded()
            UIView.animate(withDuration: 0.3) {
                self.emailDescriptionLabelBottom.constant = 0
                self.emailDescriptionLabel.text = NSLocalizedString("Enter Email", comment: "")
                self.emailDescriptionLabel.font = self.emailDescriptionLabel.font.withSize(18)
                self.emailSeparatorViewHeight.constant = 1
                self.emailContainerView.layoutIfNeeded()
            }
            
        }
        
        if textField == passwordTextField{
            passwordContainerView.layoutIfNeeded()
            UIView.animate(withDuration: 0.3) {
                self.passwordDescriptionLabelBottom.constant = 0
                self.passwordDescriptionLabel.text = NSLocalizedString("Enter Password", comment: "")
                self.passwordDescriptionLabel.font = self.emailDescriptionLabel.font.withSize(18)
                self.passwordSeparatorViewHeight.constant = 1
                self.passwordContainerView.layoutIfNeeded()
            }
            
            passwordContainerView.layoutIfNeeded()
        }
    }
    
    
    //MARK: Register Button pressed
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "GWRegisterViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension GWLoginTableViewController: UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField){

        animateTextFieldsWithBeginEditingTextField(textField)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        animateTextFieldsWithEndEditingTextField(textField)
    }
    
}


