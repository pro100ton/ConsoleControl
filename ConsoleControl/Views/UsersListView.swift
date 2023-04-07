//
//  UsersListView.swift
//  ConsoleControl
//
//  Created by Антон Шалимов on 07.04.2023.
//

import SwiftUI

struct UsersListView: View {
    @State private var users = [User]()
    
    var body: some View {
        NavigationView {
            List(users) { user in
                VStack(alignment: .leading) {
                    Text(user.name)
                        .font(.headline)
                    Text(user.credentials)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    HStack {
                        Image(systemName: "phone")
                        Text(user.phone)
                    }
                    HStack {
                        Image(systemName: "envelope")
                        Text(user.email)
                    }
                }
            }
            .navigationTitle("Users")
            .onAppear {
                loadData()
            }
        }
    }
    func loadData() {
        guard let url = Bundle.main.url(forResource: "usersData", withExtension: "json") else {
            fatalError("Could not find users.json in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load users.json")
        }
        
        let decoder = JSONDecoder()
        
        guard let loadedUsers = try? decoder.decode([User].self, from: data) else {
            fatalError("Failed to decode users.json")
        }
        
        users = loadedUsers
    }
}

struct UsersListView_Previews: PreviewProvider {
    static var previews: some View {
        UsersListView()
    }
}
