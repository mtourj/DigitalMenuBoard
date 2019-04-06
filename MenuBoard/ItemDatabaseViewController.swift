//
//  ItemDatabaseViewController.swift
//  MenuBoard
//
//  Created by Mohammad Tourjoman on 4/5/19.
//  Copyright © 2019 Mohammad Tourjoman. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ItemDatabaseViewController: UICollectionViewController {

    var ref = DatabaseReference()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()
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
