//
//  ServiceError.swift
//  spaceX
//
//  Created by Yarkın Gazibaba on 31.12.2021.
//

import Foundation
import Alamofire
import UIKit

enum ServiceError: Error {
    case network
    
    init(error: AFError) {
        self = .network
    }
}
