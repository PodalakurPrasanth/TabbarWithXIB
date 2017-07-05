//
//  LoginVC.swift
//  TabBar
//
//  Created by prasanth.podalakur on 1/27/17.
//  Copyright © 2017 KelltontechSolutions. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.loginButton.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonTapped(_ sender: AnyObject) {
        UserDefaults.standard.set("Success", forKey: "LoginSuccess")
        UserDefaults.standard.synchronize()

        let tabVC:TabViewController = TabViewController(nibName: "TabViewController", bundle: nil)
        self.present(tabVC, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
