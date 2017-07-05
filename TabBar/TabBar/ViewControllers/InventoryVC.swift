//
//  InventoryVC.swift
//  TabBar
//
//  Created by prasanth.podalakur on 1/24/17.
//  Copyright © 2017 KelltontechSolutions. All rights reserved.
//

import UIKit

class InventoryVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func nextVC(_ sender: AnyObject) {
        let vc:ViewController = ViewController(nibName: "ViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }


}
