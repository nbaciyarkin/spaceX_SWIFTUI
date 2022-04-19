//
//  LaunchesModel.swift
//  spaceX
//
//  Created by Yarkın Gazibaba on 31.12.2021.
//

import Foundation
import SwiftUI



struct LaunchesModel: Decodable {
    let name: String?
    let date_local: String?
    let success: Bool?
    let links: LinkModel?
    
    enum Codingkeys: String, CodingKey {
        case flight_number = "flight_number"
        case name
        case date_local = "date_local"
        case success
        case links
    }
}

