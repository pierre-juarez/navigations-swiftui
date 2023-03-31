//
//  TabviewMain.swift
//  NavigationSwiftUI
//
//  Created by Pierre Juarez U. on 31/03/23.
//

import SwiftUI

struct TabviewMain: View {
    var body: some View {
        TabView{
            ContentView().tabItem{
                Label("Home", systemImage: "house.fill")
            }
            ThirdView().tabItem{
                Label("Third", systemImage: "paperplane")
            }
        }
    }
}

struct TabviewMain_Previews: PreviewProvider {
    static var previews: some View {
        TabviewMain()
    }
}
