//
//  SecondView.swift
//  NavigationSwiftUI
//
//  Created by Pierre Juarez U. on 31/03/23.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        Text("Second view...")
            .navigationTitle("Second view!")
        NavigationLink(destination: ThirdView()){
            Text("Go to third view...")
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
