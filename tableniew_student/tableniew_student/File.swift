//
//  File.swift
//  tableniew_student
//
//  Created by english on 2019-11-06.
//  Copyright © 2019 english. All rights reserved.
//

import Foundation

class Person {
    
    // Properties
    var name : String
    var id : Int
   
    
    init(nameInit : String ,idInit : Int) {
        name = nameInit
        id = idInit
      
    }
    
    func data()   {
        print(id,name)
    }
}
