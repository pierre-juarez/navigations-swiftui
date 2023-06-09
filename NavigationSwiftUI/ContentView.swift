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
          ContentToolbar()
        }
        .padding()
    }
}

// View Toolbar
struct ContentToolbar: View {
    
    @State private var show = false
    @State private var text = ""
    var body: some View {
        NavigationView{
            VStack {
                TextField("Ingresa un texto", text: $text)
                Button("Open modal"){
                    show.toggle()
                }.sheet(isPresented: $show) {
                    ViewModal(textTitle: text)
                }.navigationTitle("Navigation")
                    .toolbar{
                        HStack{
                            NavigationLink(destination: SecondView(title: text)){
                                Image(systemName: "plus")
                            }
                            NavigationLink(destination: ThirdView()){
                                Image(systemName: "camera")
                            }
                        }
                    }
            }
            .padding()
        }
    }
}


// View Navigation
struct ContentNavigation: View {
    
    @State private var show = false
    
    var body: some View {
        NavigationView{
            VStack {
                NavigationLink(destination: SecondView(title:"Second view...")){
                    Text("Second view!!!")
                }
                Button("Open modal"){
                    show.toggle()
                }.sheet(isPresented: $show) {
                    ViewModal(textTitle: "")
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
                ViewModal(textTitle: "")
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
