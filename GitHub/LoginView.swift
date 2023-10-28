//
//  LoginView.swift
//  GitHub
//
//  Created by ghada Mohammad on 11/04/1445 AH.
//

import SwiftUI

struct UserInfo1: Identifiable {
    let id = UUID()
    var email: String = ""
    var password: String = ""
}

struct LoginView: View {
    var userInputArray: Array<UserInfo1> = [
        UserInfo1( email: "Email", password: "Password")
    ]

    @State var email: String = ""
    @State var password: String = ""

    

    @State var isEmailEmpty: Bool = false
    @State var isPasswordEmpty: Bool = false
    @State var isRightEmail: Bool = false
    @State var isRightPassword: Bool = false

    
    var body: some View {
        NavigationView {
            VStack {

                TextField(
                    "Email",
                    text: $email
                )
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(
                        cornerRadius: 10,
                        style: .continuous
                    )
                    .fill( Color.gray.opacity(0.2))
                    .stroke(isEmailEmpty ? Color.red : Color.gray, lineWidth: 2)
                )
                .padding(.horizontal)
                if isEmailEmpty {
                    Text("Please Write your email")
                        .foregroundColor(.red)
                        .font(.callout)
                        .padding(0)
                }
                
                
                
                SecureField(
                    "Password",
                    text: $password
                )
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(
                        cornerRadius: 10,
                        style: .continuous
                    )
                    .fill( Color.gray.opacity(0.2))
                    .stroke(isPasswordEmpty ? Color.red : Color.gray, lineWidth: 2)
                )
                .padding(.horizontal)
                if isPasswordEmpty {
                    Text("Please Write a password")
                        .foregroundColor(.red)
                        .font(.callout)
                        .padding(0)
                }
                if isRightPassword && isRightEmail{
                    Text("login success")
                        .foregroundColor(.green)
                        .font(.callout)
                        .padding(0)
                }
         
             
              
                        Button(action: {
                          isEmailEmpty = email.isEmpty
                            isPasswordEmpty = password.isEmpty
                            isRightEmail = email == "غاده"
                            isRightPassword = password == "١٢٣٤٥"
                            
                            if  !isEmailEmpty && !isPasswordEmpty {
                               
                                
                            }
                           
                        }) {
                            Text("Log In")
                                .fontWeight(.regular)
                                .frame(width: 300, height: 20)
                                .font(.title3)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black)
                                .cornerRadius(10)
                                .padding(.top)
                                .padding(20)
                        }
                    
               
                
                Spacer()
            }
            .padding(.top, 100)
            .navigationTitle("Log In")
        }
        
        
    }
   
   
}
#Preview {
    LoginView()
}
