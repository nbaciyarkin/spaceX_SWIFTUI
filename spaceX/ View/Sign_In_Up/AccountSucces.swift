//
//  AccountSucces.swift
//  spaceX
//
//  Created by Yarkın Gazibaba on 18.02.2022.
//

import SwiftUI

struct AccountSucces: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                Image("sign_up").resizable().edgesIgnoringSafeArea(.all)
                
                VStack {

                    CustomizedProgressBar()
                    Divider().frame(height: 60)
                    
                    Image("succes_icon")
                    
                    Text("Your account has been created.")
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Divider().padding(.vertical,1)
                    
                    Text("Your account information has been sent to")
                        .foregroundColor(.white)
                        .font(.body)
                    Text("your e-mail address.")
                        .foregroundColor(.white)
                        .font(.body)
                    
                    Divider().padding(.vertical,150)
                    
                    Button {
                    } label: {
                        
                            Text("Continue")
                            .frame(width: 160)
                    }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .controlSize(.large)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.capsule)
                        .tint(.gray.opacity(0.35))

                    Spacer()

                }//vstack
            }
        }//zstack
    }
}

struct AccountSucces_Previews: PreviewProvider {
    static var previews: some View {
        AccountSucces()
    }
}
