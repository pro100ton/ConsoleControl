//
//  DomainServerModelData.swift
//  ConsoleControl
//
//  Created by Антон Шалимов on 08.04.2023.
//

import Foundation
import Combine

final class DomainServersModelData: ObservableObject {
    @Published var domainServers: [DomainServer] = load("domainServersData")
}
