//
//  ContentView.swift
//  Shared
//
//  Created by Jesús Francisco Leyva Juárez on 01/02/22.
//

import SwiftUI

class AppState: ObservableObject {
    var countState = CountState()
    var lightState = LightState()
}

class CountState: ObservableObject {
    @Published var count: Int = 0
}

class LightState: ObservableObject {
    @Published var isOn = false
}

struct ContentView: View {
    var body: some View {
        VStack {
            countView()
            lightBult()
        }
    }
}

struct countView: View {
    @EnvironmentObject var countState: CountState
    var body: some View {
        let _ = Self._printChanges()
        VStack {
            Text("\(countState.count)")
            Button("Incrementar + 1") {
                self.countState.count += 1
            }
        }
    }
}
struct lightBult: View {
    @EnvironmentObject var lightState: LightState
    var body: some View {
        let _ = Self._printChanges()
        VStack {
            Image(systemName: lightState.isOn ? "lightbulb.fill" : "lightbulb")
                .foregroundColor(.yellow)
            Toggle(isOn: $lightState.isOn) {
            }
            .labelsHidden()
        } .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(AppState()).environmentObject(AppState().countState).environmentObject(AppState().lightState)
    }
}
