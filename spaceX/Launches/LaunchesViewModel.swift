//
//  LaunchesViewModel.swift
//  spaceX
//
//  Created by Yarkın Gazibaba on 31.12.2021.
//

import Foundation
import Combine 

final class LaunchesViewModel: NSObject, ObservableObject {
    
    private var task: Cancellable? = nil
    @Published var presenters: [LaunchesPresenter] = []
    
    func onAppear(){
        self.task = Service.standart.get(path: .launches, responseType: [LaunchesModel].self)
            .map{$0.map{LaunchesPresenter(with:$0)}}
            .sink(receiveCompletion: {_ in}, receiveValue: { [weak self] presenters in
                self?.presenters = presenters     
            })
         
    }
    
    
    
    
    
}
