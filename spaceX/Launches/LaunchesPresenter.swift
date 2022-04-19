//
//  LaunchesPresenter.swift
//  spaceX
//
//  Created by Yarkın Gazibaba on 31.12.2021.
//

import Foundation
import UIKit

protocol LauncModelDelegate {
    
        func customizedFormating()
}

struct LaunchesPresenter: Identifiable {
    
    
    
    let id = UUID()
    let image: String
    let name: String
    let date: String
    
  
    
    
    init(with model: LaunchesModel) {
        self.image = model.links?.patch?.small ?? ""
        self.name = model.name ?? ""
        self.date = CommonUtil.customizedFormating(str: model.date_local ?? "")
        
        
            
        }
    
}




