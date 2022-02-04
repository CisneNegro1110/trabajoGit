//
//  stateEjemplo.swift
//  trabajoGit
//
//  Created by Jesús Francisco Leyva Juárez on 01/02/22.
//

import SwiftUI

struct stateEjemplo: View {
    @State private var semaforos = 0
    var body: some View {
        VStack {
            Text("\(semaforos)")
            Button("Incremantar + 1") {
                self.semaforos += 1
            }
        }
    }
}

struct stateEjemplo_Previews: PreviewProvider {
    static var previews: some View {
        stateEjemplo()
    }
}
//comentario mas
