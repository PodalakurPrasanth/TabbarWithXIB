//
//  TabViewController.swift
//  TabBar
//
//  Created by prasanth.podalakur on 1/24/17.
//  Copyright © 2017 KelltontechSolutions. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.configureUI()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func configureUI(){
        let selectedColor = UIColor(red: 46.0/255, green: 120.0/255, blue: 236.0/255, alpha: 1.0)
        let unSelectedColor = UIColor.lightGray
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: unSelectedColor], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: selectedColor], for: .selected)
        self.tabBar.clipsToBounds = true
        self.tabBar.isTranslucent = false
        
        
        // HOME VIEWCONTROLLER SETUP
        let homeVC:HomeViewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
        homeVC.tabBarControl = self
        let homeImg = UIImage(named: "home-1")
        let homeSelectedImg = UIImage(named: "home_s-1")
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: homeImg, selectedImage: homeSelectedImg)
        self.adjustShareinsets(tabBarItem: homeVC.tabBarItem)
        
        let nav1 = TabNVC(rootViewController: homeVC)
        homeVC.navController = nav1
        
        
        
        // Inventory VIEWCONTROLLER SETUP
        
        let inventory:InventoryVC = InventoryVC(nibName: "InventoryVC", bundle: nil)
        let inventoryImg = UIImage(named: "inventory")
        let invetorySelectedImg = UIImage(named: "inventory_s-1")
        inventory.tabBarItem = UITabBarItem(title: "Inventory", image: inventoryImg, selectedImage: invetorySelectedImg)
        let nav2 = TabNVC(rootViewController: inventory)
        
        // MORE VIEWCONTROLLER SETUP
        
        let moreVC:MoreVC = MoreVC(nibName: "MoreVC", bundle: nil)
        let moreVCImg = UIImage(named: "more")
        let moreVCSelectedImg = UIImage(named: "more_s-1")
        moreVC.tabBarItem = UITabBarItem(title: "More", image: moreVCImg, selectedImage: moreVCSelectedImg)
        let nav3 = TabNVC(rootViewController: moreVC)
        
        self.viewControllers = [nav1,nav2,nav3]
        self.selectedIndex = 0
        
        self.tabBar.layer.borderWidth = 0.50
        self.tabBar.layer.borderColor = UIColor.lightGray.cgColor
        
    }
    
    func adjustShareinsets(tabBarItem:UITabBarItem)
    {
        tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0.0, vertical: 0.0)
       
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
