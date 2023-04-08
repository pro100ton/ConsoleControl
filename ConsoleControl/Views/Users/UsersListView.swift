//
//  UsersListView.swift
//  ConsoleControl
//
//  Created by Антон Шалимов on 07.04.2023.
//

import SwiftUI

struct UsersListView: View {
    @EnvironmentObject var usersModelData: UsersModelData
    
    @State private var users = [User]()
    @State private var searchText = ""
    @State private var showModal = false
    
    var body: some View {
        VStack{
            Button("Show Modal") {
                showModal = true
            }
            .sheet(isPresented: $showModal) {
                UsersModalView()
            }
            List{
                ForEach(usersModelData.users) { user in
                    UsersListRow(userInfo: user)
                }
            }
        }
    }
}
struct UsersListView_Previews: PreviewProvider {
    static var previews: some View {
        UsersListView()
            .environmentObject(UsersModelData())
    }
}
