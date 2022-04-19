//
//  SignUpScreen.swift
//  spaceX
//
//  Created by Yarkın Gazibaba on 19.01.2022.
//

import SwiftUI

struct SignUpScreen: View {
    @State var firstName = ""
    @State var e_mail = ""
    @State var phone_number = ""
    @State var password = ""
    @State var lastSelectedItem: Int?
    @State var selected = ""
    @State var show_pop_up: Bool = false
    
    var filled = false
    

    var body: some View {
        
        
            ZStack {
                
                Image("sign_up").resizable().edgesIgnoringSafeArea(.vertical)
                    .edgesIgnoringSafeArea(.bottom)
                    
                        
                    
                       /* .toolbar {
                            ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarLeading) {
                                
                                Button {
                                    //action
                                } label: {
                                    Image(systemName: "chevron.backward")
                                        .foregroundColor(.white)
                                        .frame(width: 50, height:75)
                                }
                                
                                

                                Button {
                                    //action
                                } label: {
                                    Text("Sign Up")
                                        .foregroundColor(.white).frame(width: 100, height: 50)
                                        .font(.title)
                                        
                                }

                            }
                            // cancel
                            ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing) {
                                
                                Button {
                                    //action
                                } label: {
                                    Text("Cancel")
                                        .foregroundColor(.white).frame(width: 100, height: 50)
                                        .font(.title3)
                                        
                                }

                            }
                            
                        } */
                        

                    VStack(spacing: 0) {
                      
                       CustomizedProgressBar()
                            
                        VStack {
                            
                            
                            // TextLabel
                            SignUpTextLabel(headher_text: "Name Surname", inside_text: "Enter your name", textField: self.firstName, image: "person.circle")
                          
                            Divider().padding(.vertical,4)

                            SignUpTextLabel(headher_text: "E-mail", inside_text: "Enter your e-mail adress", textField: self.e_mail, image: "envelope.open")
                            
                            Divider().padding(.vertical,4)
                            
                            PasswordTextLabel(password: self.password)
                            
                            Text("Password must contain: *uppercase letters *lowercase letters" +
                                 " numbers *special characters *8 character minimum")
                                .foregroundColor(.white)
                                .padding(.leading,25)
                                .font(.system(size: 12))
                            
                            Divider().padding(.vertical,4)
                            
                            SignUpTextLabel(headher_text: "Phone", inside_text: "Enter your phone number", textField: phone_number, image: "phone.fill")
                            
                            Divider().padding(.vertical,6)
         
                            // Country label
                            VStack(alignment: .leading) {
                                
                                Text("Country")
                                    .padding(.trailing)
                                    .padding(.leading,20)
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                                
                                HStack {
                                    Spacer(minLength: 20)
                                    
                                    HStack () {
                                        Spacer(minLength: 10)
                                        Image(systemName: "network")
                                            .resizable()
                                            .frame(width: 30, height: 30, alignment: .center)
                                            .foregroundColor(.white)
                                            .frame(minWidth: 0, maxWidth: 30)
                                            .frame(minHeight: 0, maxHeight: 33)
                                        
                                        Spacer(minLength: 5)
                                        
                                        ZStack(alignment: .leading){
                                            if selected.isEmpty {
                                                
                                                Button(action: {
                                                    show_pop_up.self = true
                                                    
                                                }) {
                                                    Text("Select your country")
                                                        .foregroundColor(.white)
                                                        .padding(8)
                                                    Spacer()
                                                }
                                            } else {
                                                Text("\(selected)")
                                                    .foregroundColor(.white)
                                                    .padding(.trailing,220)
                                                    .padding(.vertical,10)
                                            }
                                        }
                                        .padding(.horizontal,5)
                                        .padding(.vertical,4)
                                        
                                    }  // HSTack
                                    .padding([.top,.bottom], 2)
                                    .padding(.leading, 5)
                                    .background(Color.gray.opacity(0.20), alignment: .center)
                                    .cornerRadius(15)
                                    .frame(width: 360, height: 44)
                                    
                                    Spacer(minLength: 20)
                                }
                                
                                Divider().frame(height: 60)
                                
                                ContinueButton()
                                
                                Spacer(minLength: 50)
                                
                            }
                        }
                    } // top VSTACK
                    
                    
                    if show_pop_up {
                        
                        ZStack(alignment: .center) {
                            Color.gray.opacity(0.90)
                                .edgesIgnoringSafeArea(.all)
                            
                            CustomAlertView(show: $show_pop_up, selected: $selected)
                            
                        }
                    }
            }
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SignUpScreen()
                .preferredColorScheme(.light)
            .previewInterfaceOrientation(.portrait)
            SignUpScreen()
                .preferredColorScheme(.light)
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}

struct BlankSheet : View {
    let pop_up = UIScreen()
    
    var body: some View {
        ZStack(alignment: .center) {
            Color.black.opacity(0.60)
                .edgesIgnoringSafeArea(.all)
        }
    }
}


struct CustomAlertView: View {

    @Binding var show: Bool
    @Binding var selected : String
    
    var body: some View{
        
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
            
            VStack(spacing:16){
                
                Text("Country")
                    .font(.title)
                    .foregroundColor(.white)
                
                Text("Please select your country")
                    .font(.caption2)
                    .foregroundColor(.white)
                
                CustomPicker(selected: self.$selected)
                
                Divider().frame(width: 150, height: 10)
                
                HStack {
                    Button(action: {
                        show.self = false
                    }) {
                        
                        Text("Cancel")
                            .frame(width: 100)
                    }
                    .foregroundColor(.white)
                    .controlSize(.large)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.capsule)
                    .tint(.gray.opacity(0.40))

                    Button(action: {
                        
                        print(selected)
                        show.self = false
                        
                    }) {
                        
                        Text("Continue")
                            .frame(width: 100)
                    }
                    .foregroundColor(.white)
                    .controlSize(.large)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.capsule)
                    .tint(.green)
                   
                }
                Divider().frame(width: 50 ,height: 25)
            }
            .padding(.vertical,10)
            .padding(.horizontal,20)
            .background(.black.opacity(0.60))
            .cornerRadius(25)
        }
    }
}

struct SignUpTextLabel: View {
    let headher_text: String
    let inside_text: String
    @State var textField: String
    let image: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(headher_text)
                .padding(.trailing)
                .padding(.leading,20)
                .foregroundColor(.white)
                .font(.system(size: 15))
            
            HStack {
                Spacer(minLength: 20)
                
                HStack (alignment: .center,spacing: 10) {
                    Spacer(minLength: 10)
                    Image(systemName: image)
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: 30)
                        .frame(minHeight: 0, maxHeight: 33)
                    Spacer(minLength: 5)
                    
                    ZStack(alignment: .leading){
                        if textField.isEmpty {
                            Text(inside_text)
                                .foregroundColor(Color.white)
                                .padding(.leading)
                                .font(.system(size: 15))
                        }
                        TextField("",text: $textField)
                            .foregroundColor(Color.white)
                            .frame(width: 300, height: 40)
                            .font(.system(size: 15))
                    }
                    .padding(.horizontal,5)
                    .padding(.vertical,4)
                    
                }  // HSTack
                .padding([.top,.bottom], 2)
                .padding(.leading, 5)
                .background(Color.gray.opacity(0.20), alignment: .center)
                .cornerRadius(15)
                .frame(width: 328, height: 44)
                
                Spacer(minLength: 20)
            }
        }
    }
}

struct PasswordTextLabel: View {
    @State var counter = 1
    @State var password: String
    @State var visible = false
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Password")
                .padding(.trailing)
                .padding(.leading,20)
                .foregroundColor(.white)
                .font(.system(size: 15))
            
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
                                    .font(.system(size: 15))
                            }
                        
                            if self.visible{
                                TextField("", text: self.$password)
                                    .foregroundColor(Color.white)
                                    .frame(width: 250, height: 40)
                                    .font(.system(size: 15))
                                                
                            } else {
                                SecureField("", text: self.$password)
                                    .foregroundColor(Color.white)
                                    .frame(width: 250, height: 40)
                                    .font(.system(size: 15))
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
                    .background(Color.gray.opacity(0.20), alignment: .center)
                    .cornerRadius(15)
                    .frame(width: 328, height: 44)
                
                Spacer(minLength: 20)
            }
        }
    }
}

struct ContinueButton: View {
    
    var body: some View {
        
        
        Button {
        } label: {
            
            Text("Continue")
                .frame(width: 180)
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity)
        .controlSize(.large)
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.capsule)
        .tint(.gray.opacity(0.40))
    }
}
