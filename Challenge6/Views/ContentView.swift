//
//  ContentView.swift
//  Challenge6
//
//  Created by Roxy Mardare on 26.03.2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model : PersonModel
    
    
    var body: some View {
       
        TabView {
            ListView()
                .tabItem {
                    VStack {
                        Text ("List View")
                        Image (systemName: "person.2")
                    }
                }
            ToggleView ()
                .tabItem {
                    VStack {
                        Text ("Toggle View")
                        Image (systemName: "gearshape")
                    }
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PersonModel())
    }
}
