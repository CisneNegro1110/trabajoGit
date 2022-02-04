//
//  obsObject.swift
//  trabajoGit
//
//  Created by Jesús Francisco Leyva Juárez on 01/02/22.
//

import SwiftUI

class StateApp: ObservableObject {
    @Published var car: Int = 0
}

struct obsObject: View {
    @ObservedObject var stateApp = StateApp()
    var body: some View {
        VStack {
            Text(stateApp.car.description)
            Text("\(stateApp.car)")
            Button("Incrementar"){
                self.stateApp.car += 1
            }
        }
        
    }
}

struct obsObject_Previews: PreviewProvider {
    static var previews: some View {
        obsObject()
    }
}
