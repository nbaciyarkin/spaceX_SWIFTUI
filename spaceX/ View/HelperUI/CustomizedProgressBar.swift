//
//  CustomizedProgressBar.swift
//  spaceX
//
//  Created by Yarkın Gazibaba on 23.01.2022.
//

import SwiftUI

struct CustomizedProgressBar: View {
    @State private var progress = 0.5
        
        var body: some View {
            
            /*ZStack {
                NavigationLink(destination: PrivacyAndPolicySceen()) {
                    ProgressBarButton(text: "2")
                        .padding(.trailing,108)
                }

                
                ProgressView(value: 0)
                    .frame(width: 80)
                    .background(.white.opacity(0.4))
                
                NavigationLink(destination: E_mail_activation()) {
                ProgressBarButton(text: "3")
                    .padding(.leading,107)
                }
                
                ProgressView(value: 0)
                    .frame(width: 80)
                    .background(.white.opacity(0.4))
                    .padding(.leading,214)
                
                NavigationLink(destination: AccountSucces()) {
                ProgressBarButton(text: "4")
                    .padding(.leading,320)
                }
                
                ProgressView(value: 0)
                    .frame(width: 80)
                    .background(.white.opacity(0.4))
                    .padding(.trailing,214)
                
                NavigationLink(destination: SignUpScreen()) {
                    ProgressBarButton(text: "1")
                        .padding(.trailing,320)
                }
            }
            .frame(width: 350, height: 20) */
            
            ZStack {
                
                HStack (alignment: .center, spacing: 0){
                    Spacer()
                    
                    ProgressBarButton(text: "1")
                    
                    ProgressView(value: 0)
                        .frame(width: 70)
                        .background(.white.opacity(0.4))
                       
                    NavigationLink(destination: PrivacyAndPolicySceen()) {
                        ProgressBarButton(text: "2")
                    }
                    
                        
                    ProgressView(value: 0)
                        .frame(width: 70)
                        .background(.white.opacity(0.4))
                    
                    ProgressBarButton(text: "3")
                    ProgressView(value: 0)
                        .frame(width: 70)
                        .background(.white.opacity(0.4))
                    
                    Divider().frame(minWidth: 0)
                    
                    ProgressBarButton(text: "4")
                    
                    Spacer()
                }
            }
        }
}

struct CustomizedProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomizedProgressBar()
    }
}

struct DarkBlueShadowProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .shadow(color: Color(red: 0, green: 0, blue: 0.0),
                    radius: 0.0, x: 0.0, y: 0.0)
    }
}


struct ProgressBarButton: View {
    
    @State var text: String

    var body: some View {
        
        HStack {
            Button {
                print("Button \(text) pressed!")
            } label: {
                Text(text)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray))
            }
        }
    }
}
