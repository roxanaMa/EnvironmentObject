//
//  Challenge6App.swift
//  Challenge6
//
//  Created by Roxy Mardare on 26.03.2021.
//

import SwiftUI

@main
struct Challenge6App: App {
    var body: some Scene {
        let model:PersonModel = PersonModel()
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
