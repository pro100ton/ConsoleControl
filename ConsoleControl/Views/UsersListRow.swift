//
//  UsersListRow.swift
//  ConsoleControl
//
//  Created by Антон Шалимов on 07.04.2023.
//

import SwiftUI

struct UsersListRow: View {
    
    var user: User
    
    var body: some View {
        HStack {
            Text("Hello, World")
        }
    }
}

struct UsersListRow_Previews: PreviewProvider {
    static var previews: some View {
        UsersListRow(user: users[0])
    }
}
