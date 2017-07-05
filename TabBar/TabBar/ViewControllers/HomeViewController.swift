//
//  HomeViewController.swift
//  TabBar
//
//  Created by prasanth.podalakur on 1/24/17.
//  Copyright © 2017 KelltontechSolutions. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, CAPSPageMenuDelegate {
    
    var navController:TabNVC?
    var tabBarControl:TabViewController?
    
    var pageMenu:CAPSPageMenu?
    var viewControllersArray:[UIViewController] = []
    


    override func viewDidLoad() {
        super.viewDidLoad()
        self.findPrimeNumbers()
        

//        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: navigationController, action: nil)
//        navigationItem.leftBarButtonItem = backButton
        self.navigationController?.navigationBar.isHidden = true
        self.viewControllersRegister()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewControllersRegister(){
        
        let productVC:ProductListVC = ProductListVC(nibName: "ProductListVC", bundle: nil)
        productVC.title = "PRODUCTS"
        viewControllersArray.append(productVC)
        let offersVC:OffersVC = OffersVC(nibName: "OffersVC", bundle: nil)
        offersVC.title = "OFFERS"
        viewControllersArray.append(offersVC)
        let merchantVC:MerchantVC = MerchantVC(nibName: "MerchantVC", bundle: nil)
        merchantVC.title = "MERCHANTS"
        viewControllersArray.append(merchantVC)
        
        let parameters: [CAPSPageMenuOption] = [
            CAPSPageMenuOption.menuItemSeparatorWidth(2.3),
            CAPSPageMenuOption.menuItemWidth(self.view.frame.size.width/2.8),
            CAPSPageMenuOption.menuItemSeparatorPercentageHeight(0.1),
            CAPSPageMenuOption.viewBackgroundColor(UIColor.white),
            CAPSPageMenuOption.scrollMenuBackgroundColor(UIColor(red: 46.0/255, green: 120.0/255, blue: 236.0/255, alpha: 1.0)),
            CAPSPageMenuOption.selectionIndicatorColor(UIColor.white),
            CAPSPageMenuOption.menuHeight(45.0),
            CAPSPageMenuOption.addBottomMenuHairline(true),
            .menuItemFont(UIFont(name: "HelveticaNeue-Medium", size: 14.0)!),
            CAPSPageMenuOption.menuMargin(1.0),
            CAPSPageMenuOption.selectedMenuItemLabelColor(UIColor.white),
            
            CAPSPageMenuOption.unselectedMenuItemLabelColor(UIColor.orange),
            CAPSPageMenuOption.scrollAnimationDurationOnMenuItemTap(500)
        ]
        pageMenu = CAPSPageMenu(viewControllers: viewControllersArray, frame: CGRect(x:0.0, y:32.0, width: self.view.frame.size.width, height:self.view.frame.size.height), pageMenuOptions: parameters)
        self.view.addSubview(pageMenu!.view)
        pageMenu!.delegate = self
        
    }
    
    func didMoveToPage(_ controller: UIViewController, index: Int) {
        print("Current Page index :- \(index)")
    }
    
    @IBAction func nextVC(_ sender: AnyObject) {
        let vc:ViewController = ViewController(nibName: "ViewController", bundle: nil)
        self.navController?.pushViewController(vc, animated: true)
    }


    func findPrimeNumbers(){
        let numbers = 1...100
        let array:NSMutableArray = NSMutableArray()
        
        for number in numbers {
            if (number % 2 == 0) {
                print(number)
            } else if (number % 3 == 0) {
                print(number)
            } else if (number % 4 == 0) {
                print(number)
            } else if (number % 5 == 0) {
                print(number)
            } else if (number % 6 == 0) {
                print(number)
            } else if (number % 7 == 0) {
                print(number)
            } else if (number % 8 == 0) {
                print(number)
            } else if (number % 9 == 0) {
                print(number)
            } else {
                
                array.add(number)
                
            }
        }
        
        print("\(array) is Prime Numbers")
        
    }
    

}
