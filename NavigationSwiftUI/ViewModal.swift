//
//  ViewModal.swift
//  NavigationSwiftUI
//
//  Created by Pierre Juarez U. on 31/03/23.
//

import SwiftUI

struct ViewModal: View {
    
    @Environment (\.presentationMode) var back
    var textTitle: String
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea(.all)
            VStack{
                Text(textTitle)
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                Button("Back"){
                    back.wrappedValue.dismiss()
                }
            }
        }
    }
}

struct ViewModal_Previews: PreviewProvider {
    static var previews: some View {
        ViewModal(textTitle: "")
    }
}
