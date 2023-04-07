//
//  UsersDetailView.swift
//  ConsoleControl
//
//  Created by Антон Шалимов on 07.04.2023.
//

import SwiftUI

struct UsersDetailView: View {
    var userInfo: User = User(name: "Tonich", login: "pro100ton", credentials: "A.O. Shalimov", phone: "+79998887766", email: "pro100ton@gmail.com")
    var body: some View {
        VStack{
            Image(systemName: "person.fill.viewfinder")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
                .padding()
            Text(userInfo.name)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.bottom, 10.0)
            Text(userInfo.login)
                .font(.title2)
            Text(userInfo.credentials)
                .font(.subheadline)
                .padding(.bottom, 10.0)
            HStack{
                Image(systemName: "phone")
                Text(userInfo.phone)
            }
            .padding(.bottom, 1.0)
            HStack{
                Image(systemName: "envelope")
                Text(userInfo.email)
            }
        }
        .padding()
    }
}

struct UsersDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UsersDetailView()
    }
}
