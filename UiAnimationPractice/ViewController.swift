//
//  ViewController.swift
//  UiAnimationPractice
//
//  Created by Vijay Singh on 26/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cloud4: UIImageView!
    @IBOutlet weak var cloud3: UIImageView!
    @IBOutlet weak var cloud2: UIImageView!
    @IBOutlet weak var cloud1: UIImageView!
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var loginLbl: UILabel!
    
    
    let spinner = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        spinner.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        cloud1.alpha = 0
        cloud2.alpha = 0
        cloud3.alpha = 0
        cloud4.alpha = 0
        loginView.center.x  -= view.bounds.width
        emailView.center.x -= view.bounds.width
        passwordView.center.x -= view.bounds.width
        loginBtn.alpha = 0
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
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1, delay: 0.3,options: .curveEaseOut) {
            self.cloud1.alpha = 1
        }
        UIView.animate(withDuration: 1, delay: 0.5,options: .curveEaseOut) {
            self.cloud2.alpha = 1
        }
        UIView.animate(withDuration: 1, delay: 0.7,options: .curveEaseOut) {
            self.cloud3.alpha = 1
        }
        UIView.animate(withDuration: 1, delay: 0.9,options: .curveEaseOut) {
            self.cloud4.alpha = 1
        }
        
        UIView.animate(withDuration: 1, delay: 0.2, usingSpringWithDamping: 0.2, initialSpringVelocity: 1.0) {
            self.loginBtn.alpha = 1
        }
    }

    override func viewDidLayoutSubviews() {
        
    }


    @IBAction func loginBtnTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 5, delay: 0.0, usingSpringWithDamping:
                        0.7, initialSpringVelocity: 0.0, animations: {
            self.loginBtn.backgroundColor =
            UIColor(red: 0.85, green: 0.83, blue: 0.45, alpha: 1.0)
            self.spinner.center = CGPoint(x: 50, y: self.loginBtn.frame.size.height / 2)
            self.spinner.alpha = 1
        }, completion: nil)
    }
}

