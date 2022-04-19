//
//  Service.swift
//  spaceX
//
//  Created by Yarkın Gazibaba on 31.12.2021.
//

import Foundation
import Alamofire
import Combine

final class Service {
    private let baseUrl: String = "https://api.spacexdata.com/v4/"
    
    private lazy var decoder: JSONDecoder = {
        var decoder = JSONDecoder()
        return decoder
    }() 
    
    public static let standart: Service = Service()
    
    
    func get<T: Decodable>(path: EndPoint, responseType: T.Type) -> AnyPublisher<T, ServiceError>{
        AF.request(self.baseUrl + path.rawValue, method: .get)
            .publishDecodable(type: responseType, decoder: self.decoder)
            .value()
            .mapError(ServiceError.init(error:))
            .eraseToAnyPublisher()
    }
}
