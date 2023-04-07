//
//  ContentView.swift
//  ConsoleControl
//
//  Created by Антон Шалимов on 05.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    func signIn(){
        print("Signed in with: \(username) and \(password)")
    }
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.white, .blue],
                           startPoint: .top,
                           endPoint: .center)
            .ignoresSafeArea()
            VStack {
                Text("Console control")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                TextField("Username", text: $username)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 1)
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 1)
                Button("Login") {
                    signIn()
                }
                .foregroundColor(.blue)
                .frame(width: 300, height: 50)
                .background(.white)
                .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
