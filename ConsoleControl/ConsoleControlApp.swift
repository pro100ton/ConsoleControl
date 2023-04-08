//
//  ConsoleControlApp.swift
//  ConsoleControl
//
//  Created by Антон Шалимов on 05.04.2023.
//

import SwiftUI

@main
struct ConsoleControlApp: App {
    @StateObject private var usersModelData = UsersModelData()
    @StateObject private var domainServersModelData = DomainServersModelData()
    var body: some Scene {
        WindowGroup {
            UsersListView()
                .environmentObject(usersModelData)
                .environmentObject(domainServersModelData)
        }
    }
}
