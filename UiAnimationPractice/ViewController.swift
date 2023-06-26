//
//  ViewController.swift
//  UiAnimationPractice
//
//  Created by Vijay Singh on 26/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var loginLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        loginView.center.x  -= view.bounds.width
        emailView.center.x -= view.bounds.width
        passwordView.center.x -= view.bounds.width
        UIView.animate(withDuration: 1) {
            self.loginView.center.x += self.view.bounds.width
        }
        UIView.animate(withDuration: 1, delay: 0.3) {
            self.emailView.center.x += self.view.bounds.width
        }
        UIView.animate(withDuration: 1, delay: 0.4) {
            self.passwordView.center.x += self.view.bounds.width
        }
    }

    override func viewDidLayoutSubviews() {
        
    }


    @IBAction func loginBtnTapped(_ sender: UIButton) {
    }
}

