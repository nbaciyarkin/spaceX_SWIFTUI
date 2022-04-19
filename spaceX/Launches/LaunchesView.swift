//
//  LaunchesView.swift
//  spaceX
//
//  Created by Yarkın Gazibaba on 31.12.2021.
//

import SwiftUI
import Alamofire

struct LaunchesView: View {
    @ObservedObject var viewmodel: LaunchesViewModel = LaunchesViewModel()
    
    var body: some View {
        List(self.viewmodel.presenters) {item in
            LaunchesCell(presenter: item)
        }.onAppear (perform: {
            self.viewmodel.onAppear()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchesView()
       
    }
}
