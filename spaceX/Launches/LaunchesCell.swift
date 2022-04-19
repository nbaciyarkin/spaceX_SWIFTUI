//
//  LaunchesCell.swift
//  spaceX
//
//  Created by Yarkın Gazibaba on 2.01.2022.
//

import SwiftUI
import Kingfisher

struct LaunchesCell: View {
    
    private var presenter: LaunchesPresenter!
    
    init(presenter: LaunchesPresenter){
        self.presenter = presenter
    }
    
    var body: some View {
        HStack(spacing: 16){
            KFImage(URL(string:self.presenter.image))
                .cancelOnDisappear(true)
                .resizable()
                .frame(width: 128, height:128)
            VStack(alignment:.leading, spacing: 16) {
                Text("Name: \(self.presenter.name)")
                Text("Date: \(self.presenter.date)")
                    
            }
        }
    }
}

