//
//  PersonModel.swift
//  Challenge6
//
//  Created by Roxy Mardare on 29.03.2021.
//

import Foundation

class PersonModel: ObservableObject {
    
    @Published var people = [Person]()
    
    @Published var showName = true
    @Published var showAddress = true
    @Published var showCompany = true
    @Published var showExperience = true
    
    init (){
        self.people = ServiceData.getData()
        print(self.people.count)
        
    }
    
}
