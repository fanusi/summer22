//
//  RootViewController.swift
//  TabPageScrollViewController
//
//  Created by Shichimitoucarashi on 1/17/19.
//  Copyright © 2019 Shichimitoucarashi. All rights reserved.
//

import UIKit
import TabPageScrollViewController

@available(iOS 11.0, *)
class RootViewControler:TabPageScrollViewController {
    
    var index_start: Int = 0
    var index_end: Int = 0
    
    override func viewDidLoad() {
        
        self.navigationController?.navigationBar.topItem?.title = "TabPage app demo"
        
        self.delegate = self
        
        let vc1:ViewController1 = storyboard!.instantiateViewController(withIdentifier: ViewController1.identifer) as! ViewController1
        vc1.number = 1
        vc1.navigationItem.title = "Tab 1"
        let vc2:ViewController2 = storyboard!.instantiateViewController(withIdentifier: ViewController2.identifer) as! ViewController2
        vc2.number = 2
        vc2.navigationItem.title = "Tab 2"
        let vc3:ViewController3 = storyboard!.instantiateViewController(withIdentifier: ViewController3.identifer) as! ViewController3
        vc3.number = 3
        vc3.navigationItem.title = "Tab 3"
        
        self.tabItems = [TabItem(title: "Tab 1",vc: vc1),
                         TabItem(title: "Tab 2",vc: vc2),
                         TabItem(title: "Tab 3",vc: vc3)]
        
        self.view.backgroundColor = .white
        
        super.viewDidLoad()
    }
}

@available(iOS 11.0, *)
extension RootViewControler:TabPageDelegate{
    
    func willScrollPage(index: Int, viewController: UIViewController) {
        // Index: start page
        // ViewController: end page
        
        let tab = viewController.navigationItem.title
        
        switch tab {
        case "Tab 1":
            let vc:ViewController1 = viewController as! ViewController1
            print ("Index: \(index) viewController: \(vc.number)")
        case "Tab 2":
            let vc:ViewController2 = viewController as! ViewController2
            print ("Index: \(index) viewController: \(vc.number)")
        case "Tab 3":
            let vc:ViewController3 = viewController as! ViewController3
            print ("Index: \(index) viewController: \(vc.number)")
        default:
            print("Invalid tab")
        }
        
        //let vc:ViewController1 = viewController as! ViewController1
         
        //print ("First, index: \(index) viewController: \(vc.number)")
    }
    
    func didScrollPage(index: Int, viewController: UIViewController) {
        // Index: end page
        // ViewController: start page
        
        let tab = viewController.navigationItem.title
        
        switch tab {
        case "Tab 1":
            let vc:ViewController1 = viewController as! ViewController1
            print ("Index: \(index) viewController: \(vc.number)")
        case "Tab 2":
            let vc:ViewController2 = viewController as! ViewController2
            print ("Index: \(index) viewController: \(vc.number)")
        case "Tab 3":
            let vc:ViewController3 = viewController as! ViewController3
            print ("Index: \(index) viewController: \(vc.number)")
        default:
            print("Invalid tab")
        }
            
    }
    
    
    func tabChangeNotify(index: IndexPath, vc: UIViewController) {
        print ("A-index: \(index)")
    }
    
    func moveNavigationNotify(index: IndexPath) {
        print ("B-index: \(index)")
    }
}
