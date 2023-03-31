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
          ContentNavigation()
        }
        .padding()
    }
}

// View Navigation
struct ContentNavigation: View {
    
    @State private var show = false
    
    var body: some View {
        NavigationView{
            VStack {
                NavigationLink(destination: SecondView()){
                    Text("Second view!!!")
                }
                Button("Open modal"){
                    show.toggle()
                }.sheet(isPresented: $show) {
                    ViewModal()
                }.navigationTitle("Navigation")
            }
            .padding()
        }
    }
}

// View Modal
struct ContentModal: View {
    
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
