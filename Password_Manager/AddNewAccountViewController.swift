//
//  AddNewAccountViewController.swift
//  Password_Manager_task
//
//  Created by TirthShah on 10/04/25.
//

import UIKit

class AddNewAccountViewController: UIViewController {

    @IBOutlet weak var txt_account_name: UITextField!
    @IBOutlet weak var txt_username: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    
    @IBAction func btn_add_acount(_ sender: Any) {
        
        guard let accountName = txt_account_name.text, !accountName.isEmpty else {
            showAlert(title: "Error", message: "Account name is required.")
            return
        }
        guard let username = txt_username.text, !username.isEmpty else {
            showAlert(title: "Error", message: "Username is required.")
            return
        }
        guard let password = txt_password.text, !password.isEmpty else {
            showAlert(title: "Error", message: "Password is required.")
            return
        }
        
        if accountName.count >= 5 {
            if username.count >= 5 {
                if password.count >= 6 {
                    print(accountName,username,password)
                   
                    self.dismiss(animated: true)
                    
                }else {
                    showAlert(title: "Error", message: "passwprd char is greater than 5.")
                }
            }else {
                showAlert(title: "Error", message: "User Name char is greater than 5.")
            }
        }else {
            showAlert(title: "Error", message: "Account char is greater than 5.")
        }
        
        
        
    }
    func showAlert(title:String , message:String) {
        let alertcontroller = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertcontroller.addAction(UIAlertAction(title: "Ok", style: .default))
        self.present(alertcontroller, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
