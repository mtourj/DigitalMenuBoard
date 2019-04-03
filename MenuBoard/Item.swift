//
//  Item.swift
//  MenuBoard
//
//  Created by Mohammad Tourjoman on 4/1/19.
//  Copyright © 2019 Mohammad Tourjoman. All rights reserved.
//

import Foundation
import UIKit
import FirebaseDatabase

class Item {
    //Initialize with default values
    private(set) var name = "ITEM"
    private(set) var price = 0.0
    private(set) var image = UIImage()
    
    //Initialize variable for database reference
    private var ref = DatabaseReference()
    
    //'Constructor' you could say
    func configure(_ itemName : String, _ itemDB: ItemDB){
        name = itemName
        ref = itemDB.getReference()
        price = getPrice()
        image = getImage()
    }
    
    //Returns the image representing this object
    private func getImage () -> UIImage {
        //Placeholder, doesnt return anything
        return UIImage(contentsOfFile: name)!
    }
    
    //Returns the price of this item
    private func getPrice () -> Double {
        return ref.child("Items").value(forKey: name) as! Double
    }
}
