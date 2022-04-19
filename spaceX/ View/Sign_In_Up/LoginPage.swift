//
//  LoginPage.swift
//  spaceX
//
//  Created by Yarkın Gazibaba on 15.01.2022.
//

import SwiftUI
import MaterialComponents.MaterialTextControls_FilledTextFields
import Firebase




struct LoginPage: View {  

    @State var counter = 1
    @State var e_mail = ""
    @State var password = ""
    @State var visible = false
    
    
   // init() {
     //   FirebaseApp.configure()
    //}
    
    
    var body: some View {
        
        NavigationView {
            ZStack{
                Image("loginPage").resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Divider().frame(height: 35)

                    Image("spaceXLogo")
                        .padding(30)
                    
                    //Mail LabelText
                    HStack {
                        Spacer(minLength: 25)
                            
                            HStack (alignment: .center,spacing: 10) {
                                Spacer(minLength: 5)
                                
                                Image("mail_icon")
                                    .resizable()
                                    .frame(width: 30, height: 30, alignment: .center)
                                    .foregroundColor(.white)
                                    .frame(minWidth: 0, maxWidth: 30)
                                    .frame(minHeight: 0, maxHeight: 33)
                                
                                ZStack(alignment: .leading){
                                    
                                    
                                    if e_mail.isEmpty {
                                        Text("E-mail")
                                            .foregroundColor(Color.white)
                                            .padding(.leading, 15)
                                            
                                        
                                    }
                                    
                                    TextField("",text: $e_mail)
                                        .foregroundColor(Color.white)
                                        .frame(width: 280, height: 34)
                                        .padding(.leading, 15)
                                        .keyboardType(.emailAddress)
                                        .autocapitalization(.none)
                                        
 
                                }
                                .padding(.horizontal,5)
                                .padding(.vertical,4)
                                
                            }  // HSTack
                                    .padding([.top,.bottom], 2)
                                    .padding(.leading, 5)
                                    .background(Color.white.opacity(0.20), alignment: .center)
                                    .cornerRadius(10)
                                    .frame(width: 328, height: 44)
                            
                            Spacer(minLength: 20)
                    }
                    
                    
                    Divider()
                    
                    //Password LabelText
                    HStack {
                            Spacer(minLength: 25)
                        
                            HStack (alignment: .center,spacing: 10) {
                                Image("password_icon")
                                    .resizable()
                                    .frame(width: 30, height: 30, alignment: .center)
                                    .foregroundColor(.white)
                                
                                
                                
                                ZStack(alignment: .leading){
                                    if password.isEmpty {
                                        Text("Password")
                                            .foregroundColor(Color.white)
                                    }
                                
                                    if self.visible{
                                        TextField("", text: self.$password)
                                            .foregroundColor(Color.white)
                                            .frame(width: 228, height: 34)
                                                        
                                    } else {
                                        SecureField("", text: self.$password)
                                            .foregroundColor(Color.white)
                                            .frame(width: 228, height: 34)
                                    }
                                }
                                .padding(.horizontal,5)
                                .padding(.vertical,4)
                                
                                Divider()
                             

                                Button(action: {
                                    counter = counter + 1
                                    if(counter % 2 == 0){
                                        self.visible = true
                                    } else {
                                        self.visible = false
                                    }
        
                                }, label: {
                                    Image("hide_icon")
                                })
                                Spacer(minLength: 5)
                                
                            }  // HSTack
                            .padding([.top,.bottom], 2)
                            .padding(.leading, 5)
                            .background(Color.white.opacity(0.20), alignment: .center)
                            .cornerRadius(10)
                            .frame(width: 328, height: 44)
                                    
                            Spacer(minLength: 20)
                    }
                      
                    Divider().frame(height: 5)
                    
                    Text("Forgot Password").foregroundColor(.white)
                    
                        .opacity(1)
                        .frame(width: 200) // first frame for the creating little
                        .frame(maxWidth: .infinity ,alignment: .bottomLeading) // second wraps the little frame
                    
                    Divider().frame(height: 30)
                    
                    VStack{
                       
                        Button {
                        } label: {
                            
                                Text("Sign in")
                                .frame(width: 160)
                        }
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .controlSize(.large)
                            .buttonStyle(.borderedProminent)
                            .buttonBorderShape(.capsule)
                            .tint(.gray.opacity(0.40))
                            
                        Divider().frame(height:16)
                        
                        Text("or").foregroundColor(.white)
                       
                        Divider().frame(height:16)
                        
                        Button {
                        } label: {
                            HStack {
                                Image(systemName: "applelogo")
                                Text("Sign in with Apple")
                            }
                        }
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .controlSize(.large)
                            .buttonStyle(.borderedProminent)
                            .buttonBorderShape(.capsule)
                            .tint(.gray.opacity(0.40))
                            .foregroundColor(.white.opacity(0.70))
                        
                        Divider().frame(height: 50)
                        
                        NavigationLink(destination: SignUpScreen()) {
                            Text("Sign up")
                                .foregroundColor(.white)  
                        }
                    }
                }
            }

        }
    }
   /* func createNewAccount() {
        Auth.auth().createUser(withEmail: e_mail, password:  password) {
            result, error in
            if let err = error {
                print("Failed to create user",err)
                return
            }
            print("Succesfully created user: \(result?.user.uid ?? "")")
        }
    } */
}



struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}

