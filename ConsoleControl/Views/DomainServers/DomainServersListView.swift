//
//  DomainServersListView.swift
//  ConsoleControl
//
//  Created by Антон Шалимов on 08.04.2023.
//

import SwiftUI

struct DomainServersListView: View {
    let domainServers: [DomainServer]
    
    var onlineServers: [DomainServer] {
        domainServers.filter{ domainServer in
            domainServer.online
        }
    }
    
    var body: some View {
        List{
            ForEach(domainServers) { server in
                HStack{
                    Text(server.domainName)
                    Spacer()
                    Text(server.type)
                }
            }
        }
    }
}

struct DomainServersListView_Previews: PreviewProvider {
    static var domainServers = DomainServersModelData().domainServers
    static var previews: some View {
        DomainServersListView(domainServers: domainServers)
    }
}
