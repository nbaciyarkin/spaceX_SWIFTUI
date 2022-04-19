//
//  E-mail_activation.swift
//  spaceX
//
//  Created by Yarkın Gazibaba on 17.02.2022.
//

import SwiftUI

struct E_mail_activation: View {
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Image("sign_up").resizable().edgesIgnoringSafeArea(.all)
                
                VStack {
                    CustomizedProgressBar()
                    Divider().frame(height: 60)
                    
                    Image("mail_auth")
                    
                    Text("Your activation e-mail has been sent.")
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Divider().padding(.vertical,1)
                    
                    Text("To complete your registration, please click")
                        .foregroundColor(.white)
                        .font(.body)
                    Text(" the confirmation link.")
                        .foregroundColor(.white)
                        .font(.body)
                    
                    Divider().padding(.vertical,150)
                    
                    Text("Did not receive e-mail?").foregroundColor(.white.opacity(0.8))
                    
                    Button {
                        // on tap...
                    } label: {
                        
                            Text("Send Again")
                            .frame(width: 160)
                            .foregroundColor(Color("CustomColor"))
                            .font(.title3)
                    }
                        .foregroundColor(.green)
                        .frame(maxWidth: .infinity)
                        .controlSize(.large)
                        .padding(.vertical,1)
                    
                } // Vstack
            }// zSATCK
        }// nvgationView
    }
}

struct E_mail_activation_Previews: PreviewProvider {
    static var previews: some View {
        E_mail_activation()
    }
}
