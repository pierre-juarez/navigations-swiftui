//
//  SecondView.swift
//  NavigationSwiftUI
//
//  Created by Pierre Juarez U. on 31/03/23.
//

import SwiftUI

struct SecondView: View {
    var title: String
    var body: some View {
        Text("Second view...")
            .navigationTitle(title)
        NavigationLink(destination: ThirdView()){
            Text("Go to third view...")
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(title: "Second view...")
    }
}
