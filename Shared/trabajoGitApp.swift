//
//  trabajoGitApp.swift
//  Shared
//
//  Created by Jesús Francisco Leyva Juárez on 01/02/22.
//

import SwiftUI

@main
struct trabajoGitApp: App {
    var appState = AppState()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(appState).environmentObject(appState.countState).environmentObject(appState.lightState)
            //observObjectEjemplo()
        }
    }
}
