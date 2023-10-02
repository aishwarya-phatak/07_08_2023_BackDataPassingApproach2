//
//  Person.swift
//  07_08_2023_BackDataPassingApproach2
//
//  Created by Vishal Jagtap on 02/10/23.
//

import Foundation
class Person{
    //MARK : Stored Properties
    var name : String
    var lastName : String
    var city : String
    var rollNumber : Int
    var bloodGroup : String?                 //optional
    var aadharNumber : String = "098912331212"   //initialized
    
    //MARK : normal init
    init(name: String, lastName: String, city: String, rollNumber: Int) {
        self.name = name
        self.lastName = lastName
        self.city = city
        self.rollNumber = rollNumber
    }
    
    //MARK : Convenience init
    convenience init(name : String) {
        self.init(name: name, lastName: "Nipunge", city: "Pune", rollNumber: 10)
    }
}


var personRef1 = Person(name: "Tushar", lastName: "Dahake", city: "Amravati", rollNumber: 11)

var personRef = Person(name:"Prathamesh")

