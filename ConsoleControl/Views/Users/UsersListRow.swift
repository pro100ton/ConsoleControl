//
//  UsersListRow.swift
//  ConsoleControl
//
//  Created by Антон Шалимов on 07.04.2023.
//

import SwiftUI

struct UsersListRow: View {
    
    var userInfo: User
    var body: some View {
        VStack(alignment: .leading) {
            Text(userInfo.login)
            HStack{
                Image(systemName: "envelope")
                Text(userInfo.email)
                    .font(.caption)
            }
        }
    }
}

struct UsersListRow_Previews: PreviewProvider {
    static var users = UsersModelData().users
    static var previews: some View {
        UsersListRow(userInfo: users[0])
        UsersListRow(userInfo: users[1])
    }
}
