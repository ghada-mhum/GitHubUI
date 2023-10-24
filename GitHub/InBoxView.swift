//
//  InBoxView.swift
//  GitHub
//
//  Created by ghada Mohammad on 09/04/1445 AH.
//

import SwiftUI

struct InBoxView: View {
    var body: some View {
        ZStack{
            Color.black.opacity(0.9)
                .ignoresSafeArea(.all)
            VStack{
                Text("Inbox")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.trailing,230)
                    .fontWeight(.bold)
                HStack{
                    
                    Button(action:{}) {
                        Text("Inbox")
                        Image(systemName: "chevron.down")
                            .foregroundColor(.gray)
                    }.fontWeight(.regular)
                        .frame(width: 60,height: 10)
                        .font(.caption)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.white.opacity(0.2))
                        .cornerRadius(30)
                        .padding(3)
                        .padding(.leading,10)
                    Button(action:{}) {
                        Text("Unread")
                           
                        Image(systemName: "chevron.down")
                    } .fontWeight(.regular)
                        .frame(width: 80,height: 10)
                        .font(.caption)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.white.opacity(0.2))
                        .cornerRadius(30)
                        .padding(3)
                    Button(action:{}) {
                        Text("Repository")
                          
                        Image(systemName: "chevron.down")
                    }  .fontWeight(.regular)
                        .frame(width: 100,height: 10)
                        .font(.caption)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.white.opacity(0.2))
                        .cornerRadius(30)
                        .padding(3)
                    Spacer()
                    
                }
                Divider()
                    .background(.white.opacity(0.2))
                    
               Image("img")
                    .resizable()
                    .frame(width: 400,height: 350)
                    .padding(.vertical)
                
                Text("All caught up!")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.bold)
                Text("Take a break, write some code, and do what you do best.")
                    .foregroundColor(.gray)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                Spacer()
            }
        }
            }
}

#Preview {
    InBoxView()
}
