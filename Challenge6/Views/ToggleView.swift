//
//  ToggleView.swift
//  Challenge6
//
//  Created by Roxy Mardare on 29.03.2021.
//

import SwiftUI

struct ToggleView: View {
    
    @EnvironmentObject var model : PersonModel
    
    var body: some View {
            
        VStack{
            Text ("Display preferences")
                .font(.headline)
                .bold()
                
                Toggle ("Show name:", isOn: $model.showName)
                
                Toggle ("Show address:", isOn: $model.showAddress)
                
                Toggle ("Show company:", isOn: $model.showCompany)
                
                Toggle ("Show years of experience:", isOn: $model.showExperience)
              
            }
        
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
