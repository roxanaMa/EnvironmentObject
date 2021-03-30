//
//  PersonModel.swift
//  Challenge6
//
//  Created by Roxy Mardare on 29.03.2021.
//

import Foundation

class Person: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var address:String
    var company: String
    var yearsOfExperience:Int
    
}
