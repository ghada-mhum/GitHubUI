//
//  SignUpView.swift
//  GitHub
//
//  Created by ghada Mohammad on 11/04/1445 AH.
//

import SwiftUI

struct UserInfo: Identifiable {
    let id = UUID()
    var name: String = ""
    var email: String = ""
    var password: String = ""
    var passwordConfi: String = ""
    
}

struct SignUpView: View {
    var userInputArray: Array<UserInfo> = [
        UserInfo(name: "Name", email: "Email", password: "Password", passwordConfi: "Confirm Password")
    ]
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var passwordConfi: String = ""
    
    @State var isNameEmpty: Bool = false
    @State var isEmailEmpty: Bool = false
    @State var isPasswordEmpty: Bool = false
    @State var isPasswordConfiEmpty: Bool = false
    @State var isPasswordConfiMatch: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                TextField(
                    "Name",
                    text: $username
                )
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(
                        cornerRadius: 10,
                        style: .continuous
                    )
                    .fill( Color.gray.opacity(0.2))
                    .stroke(isNameEmpty ? Color.red: Color.gray, lineWidth: 2)
                   
                )
                .padding(.horizontal)
                if isNameEmpty {
                    Text("Please Write your name")
                        .foregroundColor(.red)
                        .font(.callout)
                        .padding(0)
                }
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
                SecureField(
                    "Confirm Password",
                    text: $passwordConfi
                )
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(
                        cornerRadius: 10,
                        style: .continuous
                    )
                    .fill( Color.gray.opacity(0.2))
                    .stroke(isPasswordConfiEmpty ? Color.red : Color.gray, lineWidth: 2)
                )
                .padding(.horizontal)
                if isPasswordConfiEmpty {
                   Text("Please Write the password again")
                        .foregroundColor(.red)
                        .font(.callout)
                        .padding(0)
                }
                if isPasswordConfiMatch{
                   Text("passwords doesn't matches!")
                        .foregroundColor(.red)
                        .font(.callout)
                        .padding(0)
                }
                Button(action: {
                    // Validate the user input
                    isNameEmpty = username.isEmpty
                    isEmailEmpty = email.isEmpty
                    isPasswordEmpty = password.isEmpty
                    isPasswordConfiEmpty = passwordConfi.isEmpty
                    isPasswordConfiMatch = isPasswordEmpty == isPasswordConfiEmpty
                    
                    if !isNameEmpty && !isEmailEmpty && !isPasswordEmpty && !isPasswordConfiEmpty {
                        // All fields are filled, perform further actions
                        
                    }
                }) {
                    Text("Get started")
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
            .navigationTitle("Sign Up")
        }
    }
}

#Preview {
    SignUpView()
}
