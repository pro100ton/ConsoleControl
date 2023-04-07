//
//  Users.swift
//  ConsoleControl
//
//  Created by Антон Шалимов on 07.04.2023.
//

import Foundation
import CoreLocation
import SwiftUI

struct User: Hashable, Codable, Identifiable {
    let id = UUID()
    let name: String
    let login: String
    let credentials: String
    let phone: String
    let email: String
}
