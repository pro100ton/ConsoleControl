//
//  UsersModalView.swift
//  ConsoleControl
//
//  Created by Антон Шалимов on 08.04.2023.
//

import SwiftUI

struct UsersModalView: View {
    //    @Environment(\.presentationMode) var presentationMode
    //    @EnvironmentObject var domainServerModelData: DomainServersModelData
    //
    //    var body: some View {
    //        VStack {
    //            DomainServersListView(domainServers: domainServerModelData.domainServers)
    //            Button("Close") {
    //                presentationMode.wrappedValue.dismiss()
    //            }
    //        }
    //        .padding()
    //        .background(Color.white)
    //    }
    
    var domainServers: [DomainServer]
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Select server to view users from")
                .padding(.top, 20.0)
            List(domainServers, id: \.self) { server in
                Text(server.domainName)
            }
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Close")
            })
        }
    }
}

struct UsersModalView_Previews: PreviewProvider {
    static var domainServers = DomainServersModelData().domainServers
    static var previews: some View {
        UsersModalView(domainServers: domainServers)
        //            .environmentObject(DomainServersModelData())
    }
}
