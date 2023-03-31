//
//  ContentView.swift
//  NavigationSwiftUI
//
//  Created by Pierre Juarez U. on 31/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var show = false
    
    var body: some View {
        VStack {
            Button("Open modal"){
                show.toggle()
            }.sheet(isPresented: $show) {
                ViewModal()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
