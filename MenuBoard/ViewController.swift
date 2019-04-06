//
//  ViewController.swift
//  MenuBoard
//
//  Created by Mohammad Tourjoman on 3/31/19.
//  Copyright © 2019 Mohammad Tourjoman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func Navigate (identifier : String) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let viewController = storyBoard.instantiateViewController(withIdentifier: identifier) as UIViewController
        
        self.present(viewController, animated:true, completion: nil)
    }
    
    //Edit Screens button
    @IBAction func OnEditScreens(_ sender: Any) {
        Navigate(identifier: "editScreensViewController")
    }
    
    @IBAction func OnEditItems(_ sender: Any) {
        Navigate(identifier: "itemDatabaseViewController")
    }
    
    @IBAction func OnEditMedia(_ sender: Any) {
        Navigate(identifier: "mediaDatabaseViewController")
    }
    
    @IBAction func OnSettings(_ sender: Any) {
        Navigate(identifier: "settingsViewController")
    }
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

