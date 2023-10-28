//
//  RegestrationView.swift
//  GitHub
//
//  Created by ghada Mohammad on 11/04/1445 AH.
//

import SwiftUI

struct RegestrationView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("GitHub Clone")
                    .font(.largeTitle)
                    .bold()
            }
            .frame(maxWidth: .infinity ,maxHeight: .infinity)
            
            VStack{
                NavigationLink(
                    destination: Text("Google"),
                    label: {
                        HStack{
                            ZStack{
                                Image(systemName: "apple.logo")
                                    .foregroundColor(.black)
                                    .padding(.leading,-160)
                                
                                Text("Continue with Google")
                                    .padding()
                                    .foregroundColor(.black)
                                    .bold()
                            }
                            
                        }
                        .frame(maxWidth: .infinity)
                        .background(
                            
                            RoundedRectangle(
                                
                                cornerRadius: 10,
                                style: .continuous
                            )
                            .stroke(.black, lineWidth: 2)
                            
                        )
                        .padding(.horizontal)
                        .padding(.vertical,2)
                    })
                
                NavigationLink(
                    destination: Text("Apple"),
                    label: {
                        HStack{
                            ZStack{
                                Image(systemName: "apple.logo")
                                    .foregroundColor(.white)
                                    .padding(.leading,-160)
                                Text("Continue with Apple")
                                    .padding()
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .background(
                            
                            RoundedRectangle(
                                
                                cornerRadius: 10,
                                style: .continuous
                            )
                            .fill(.black)
                            .stroke(.black, lineWidth: 2)
                            
                        )
                        .padding(.horizontal)
                        .padding(.vertical,2)
                    })
                NavigationLink(
                    destination: Text("Facebook"),
                    label: {
                        HStack{
                            ZStack{
                                Image(systemName: "apple.logo")
                                    .foregroundColor(.white)
                                    .padding(.leading,-160)
                                Text("Continue with Facebook")
                                    .padding()
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .background(
                            
                            RoundedRectangle(
                                
                                cornerRadius: 10,
                                style: .continuous
                            )
                            .fill(.blue)
                            .stroke(.blue, lineWidth: 2)
                            
                        )
                        .padding(.horizontal)
                        .padding(.vertical,2)
                    })
                NavigationLink(
                    destination: LoginView(),
                    label: {
                        HStack{
                            ZStack{
                                Image(systemName: "apple.logo")
                                    .foregroundColor(.white)
                                    .padding(.leading,-160)
                                Text("Continue with Email")
                                    .padding()
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .background(
                            
                            RoundedRectangle(
                                
                                cornerRadius: 10,
                                style: .continuous
                            )
                            .fill(.pink)
                            .stroke(.pink, lineWidth: 2)
                            
                        )
                        .padding(.horizontal)
                        .padding(.vertical,2)
                    })
                NavigationLink(
                    destination: SignUpView(),
                    label: {
                        Text("New to GitHup- clone? Sign Up")
                            .font(.callout)
                            .bold()
                            .underline()
                            .foregroundColor(.black)
                    })
                
                Text("By cliking Sign Up, continue with Apple, continue with Google, or continue with Facebook, you agree to GitHup- clone's [Term of Use, Privacy, Policy,](https://www.google.com/?client=safari) and [Cookie Policy.](https://www.google.com/?client=safari)")
                    .padding(4)
                    .font(.footnote)
                    .multilineTextAlignment(.center)
            } .frame(maxWidth: .infinity,maxHeight: .infinity)
            
        }
    }
}
#Preview {
    RegestrationView()
}
