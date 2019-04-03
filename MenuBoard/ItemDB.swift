//
//  ItemDatabase.swift
//  MenuBoard
//
//  Created by Mohammad Tourjoman on 4/2/19.
//  Copyright © 2019 Mohammad Tourjoman. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase

class ItemDB {
    
    var ref = DatabaseReference()
    var items = NSMutableDictionary()
    
    func configure(){
        ref = Database.database().reference()
        setupDatabase()
    }
    
    private func setupDatabase(){
        ref.observeSingleEvent( of: DataEventType.value, with: { (snapshot) in
            for item in snapshot.children.allObjects as! [DataSnapshot]{
                let newItem = Item()
                newItem.configure(item.value as! String, self)
                self.items[item.value ?? "ITEM"] = newItem
            }
        })
    }
    
    func getReference () -> DatabaseReference {
        return ref
    }
    
}
