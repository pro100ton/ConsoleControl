//
//  DomainServerModel.swift
//  ConsoleControl
//
//  Created by Антон Шалимов on 08.04.2023.
//

import Foundation

struct DomainServer: Codable, Hashable, Identifiable {
    var id: Int
    var type: String
    var domainName: String
    var domainUser: String
    var serverName: String
    var description: String
    var isAuthAvailable: Bool
    var createdAt: String
    var updatedAt: String
    var online: Bool
    
    enum CodingKeys: String, CodingKey {
        case id
        case type
        case domainName = "domain_name"
        case domainUser = "domain_user"
        case serverName = "server_name"
        case description
        case isAuthAvailable = "is_auth_available"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case online
    }
}
