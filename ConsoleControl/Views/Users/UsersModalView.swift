//
//  UsersModalView.swift
//  ConsoleControl
//
//  Created by Антон Шалимов on 08.04.2023.
//

import SwiftUI

struct UsersModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Here will be setting for users filtering")
                .padding()
            Button("Close") {
                presentationMode.wrappedValue.dismiss()
            }
        }
        .padding()
        .background(Color.white)
    }
}

struct UsersModalView_Previews: PreviewProvider {
    static var previews: some View {
        UsersModalView()
    }
}
