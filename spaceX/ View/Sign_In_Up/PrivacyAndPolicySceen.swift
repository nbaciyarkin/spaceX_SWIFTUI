//
//  PrivacyAndPolicySceen.swift
//  spaceX
//
//  Created by Yarkın Gazibaba on 26.01.2022.
//

import SwiftUI

struct PrivacyAndPolicySceen: View {
    @State var memberShipCheck = false
    @State var privacyCheck = false
    
    var body: some View {
        
            ZStack{
                Image("sign_up")
                    .resizable().edgesIgnoringSafeArea(.all)
                VStack{
                    CustomizedProgressBar()
                        

                    ConditionsView(header:"Membership Agreement", privacy_text:
                                    "1.Lorem ipsum dolor sit ametConsectetur adipiscing elit. In quis porta orci, id semper neque. Morbi vehicula odio sit amet libero pretium dapibus. Sed vel feugiat dolor. Nullam at eros nibh. Duis vehicula venenatis massa vel mattis. Suspendisse venenatis suscipit elit, id tincidunt sapien eleifend eu. Proin rhoncus semper arcu id rutrum. Donec sit amet magna ultrices massa molestie laoreet sed vitae risus. Consectetur adipiscing elit. In quis porta orci, id semper neque. Morbi vehicula odio sit amet libero pretium dapibus. Sed vel feugiat dolor. Nullam at eros nibh. Duis vehicula venenatis massa vel mattis. Suspendisse venenatis suscipit elit, id tincidunt sapien eleifend eu. Proin rhoncus semper arcu id rutrum. Donec sit amet magna ultrices massa molestie laoreet sed vitae risus.")
                    Spacer().frame(height:15)
                    
                    ConditionsView(header:"Privacy Policy", privacy_text:
                                   "1.Lorem ipsum dolor sit ametConsectetur adipiscing elit. In quis porta orci, id semper neque. Morbi vehicula odio sit amet libero pretium dapibus. Sed vel feugiat dolor. Nullam at eros nibh. Duis vehicula venenatis massa vel mattis. Suspendisse venenatis suscipit elit, id tincidunt sapien eleifend eu. Proin rhoncus semper arcu id rutrum. Donec sit amet magna ultrices massa molestie laoreet sed vitae risus. Consectetur adipiscing elit. In quis porta orci, id semper neque. Morbi vehicula odio sit amet libero pretium dapibus. Sed vel feugiat dolor. Nullam at eros nibh. Duis vehicula venenatis massa vel mattis. Suspendisse venenatis suscipit elit, id tincidunt sapien eleifend eu. Proin rhoncus semper arcu id rutrum. Donec sit amet magna ultrices massa molestie laoreet sed vitae risus.")
                    
                    Spacer().frame(height:15)
                    
                    VStack {
                        HStack {
                            CheckBoxView(checked: $memberShipCheck)
                            
                            Text("I have read and accept to Membership Contract.").foregroundColor(.white)
                                .font(.system(size: 15))
                                .frame(width: 340, height: 17)
                        }
                   
                    Spacer().frame(height:15)
                    
                        HStack {
                            CheckBoxView(checked: $privacyCheck)
                            
                            Text("I have read and accept to Privacy Policy.").foregroundColor(.white)
                                .font(.system(size: 15))
                                .frame(width: 340, height: 17,alignment: .leading)
                        }
                    }

                    Spacer().frame(height:50)
                    
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
                }
            }
    }
}

struct PrivacyAndPolicySceen_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyAndPolicySceen()
    }
}


struct ConditionsView: View {
    var header: String
    var privacy_text: String
   
    var body: some View {
        ScrollView {
            HStack {
                Text(header).font(.title2)
                    .foregroundColor(Color(red: 255, green: 255, blue: 255))
                .font(.custom("Muli-Bold", size: 16))
                Spacer()
            }
            .padding(.leading)
            .padding(.top)

            Text(privacy_text)
                .foregroundColor(Color(red: 255, green: 255, blue: 255))
                .font(.custom("Muli-Bold", size: 16))
                .padding()
        }
            .frame(width: 380, height: 250)
            .background(.white.opacity(0.1))
    }
}
