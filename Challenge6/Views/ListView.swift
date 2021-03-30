//
//  ListView.swift
//  Challenge6
//
//  Created by Roxy Mardare on 29.03.2021.
//

import SwiftUI

struct ListView: View {
   
    @EnvironmentObject var model : PersonModel
    
    var body: some View {
        
        List (model.people) {p in
            VStack(alignment: .leading) {
               
                if model.showName {
                    Text ("Name: \(p.name)")
                }
                if model.showAddress {
                    Text ("Address: \(p.address)")
                }
                if model.showCompany {
                    Text ("Company: \(p.company)")
                }
                if model.showExperience {
                    Text ("Years of Experience: \(p.yearsOfExperience)")
                }
        
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    
    static var previews: some View {
        ListView()
    }
}


