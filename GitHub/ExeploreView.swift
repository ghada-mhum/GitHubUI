//
//  ExeploreView.swift
//  GitHub
//
//  Created by ghada Mohammad on 09/04/1445 AH.
//

import SwiftUI

struct ExeploreView: View {
    @State private var name: String = ""
    var body: some View {
        ZStack{
            Color.black
            
                .ignoresSafeArea(.all)
            
            ScrollView{
                Text("Explore")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.trailing,230)
                    .fontWeight(.bold)
                VStack{
                    HStack{
                        Image(systemName: "magnifyingglass")
                        TextField("Search GitHub", text: $name)
                        
                    }
                    .padding()
                    .foregroundColor(.gray)
                    .fontWeight(.regular)
                    .font(.title3)
                    .frame(width: 380,height: 40)
                    .background(
                        
                        RoundedRectangle(
                            
                            cornerRadius: 15,
                            style: .continuous
                        )
                        .fill(.white.opacity(0.1))
                        
                        
                    )
                    HStack{
                        Text("Discover")
                        
                            .font(.title)
                            .foregroundStyle(.white)
                        Spacer()
                        
                    }.padding()
                    
                    VStack{
                        HStack{
                            Image(systemName:"flame")
                                .resizable()
                                .frame(width: 20,height: 20)
                                .foregroundColor(.white)
                                .padding(8)
                                .background(.purple)
                                .cornerRadius(4)
                                .padding(4)
                            Text("Trading Repositories")
                                .foregroundColor(.white.opacity(0.8))
                            Spacer()
                            Image(systemName:"chevron.right")
                                .resizable()
                                .frame(width:8,height: 12)
                                .foregroundColor(.gray)
                            
                           
                        }
                        Divider()
                            .background(.white.opacity(0.2))
                            .padding(.leading,70)
                        HStack{
                            Image(systemName:"face.smiling")
                                .resizable()
                                .frame(width: 20,height: 20)
                                .foregroundColor(.white)
                                .padding(8)
                                .background(.red)
                                .cornerRadius(4)
                                .padding(4)
                            Text("Awesome Lists")
                                .foregroundColor(.white.opacity(0.8))
                            Spacer()
                            Image(systemName:"chevron.right")
                                .resizable()
                                .frame(width:8,height: 12)
                                .foregroundColor(.gray)
                          
                           
                        }
                     
                    }   .padding()
                        .background(
                            
                            RoundedRectangle(
                                
                                cornerRadius: 15,
                                style: .continuous
                            )
                            .fill(.white.opacity(0.1))
                            
                            
                        )
                    
                    HStack{
                        Text("Activity")
                        
                            .font(.title)
                            .foregroundStyle(.white)
                        Spacer()
                        
                    }.padding()
                    
                    ZStack{
                        
                        RoundedRectangle(
                            
                            cornerRadius: 15,
                            style: .continuous
                        )
                      
                        .fill(.white.opacity(0.1))
                        .frame(width: 380, height: 650)

                        VStack{
                          Image("img2")
                                .resizable()
                                .frame(width: 380,height: 270)
                            HStack{
                                Image(systemName: "person")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.black)
                                    .padding(8)
                                    .background(.white)
                                    .cornerRadius(30)
                                    .padding(4)
                                    .padding(.leading)
                                Text("steven-tay /dub")
                                    .foregroundColor(.white)
                                    .font(.title2)
                                
                                Spacer()
                            }
                            Text("An open-source link shortener with built-in analytics + free custom domains.")
                                .foregroundColor(.white)
                                .font(.title3)
                                .padding(18)
                            HStack{
                                Image(systemName: "star")
                                    .resizable()
                                    .frame(width: 25,height: 25)
                                    .foregroundColor(.gray)
                                    .padding(8)
                                    .background(.clear)
                                    .cornerRadius(30)
                                    .padding(4)
                                    .padding(.leading)
                                Text("12,705")
                                    .foregroundColor(.gray)
                                    .font(.title2)
                                    
                                Image(systemName: "person")
                                    .resizable()
                                    .frame(width: 10,height: 10)
                                    .foregroundColor(.blue)
                                    .padding(8)
                                    .background(.blue)
                                    .cornerRadius(30)
                                    .padding(4)
                                    .padding(.leading)
                                Text("TypeScript")
                                    .foregroundColor(.gray)
                                    .font(.title2)
                                
                                Spacer()
                            }
                            
                            HStack{
                                Image(systemName: "person")
                                    .resizable()
                                    .frame(width: 25,height: 25)
                                    .foregroundColor(.gray)
                                    .padding(8)
                                    .background(.clear)
                                    .cornerRadius(30)
                                    .padding(4)
                                    .padding(.leading)
                                Text("26 contributors ")
                                    .foregroundColor(.gray)
                                    .font(.title2)
                                
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .frame(width: 10,height: 15)
                                    .foregroundColor(.gray)
                                    .padding(8)
                                    .background(.clear)
                                    .cornerRadius(30)
                                    .padding(4)
                                    .padding(.leading)
                                Spacer()
                            }
                            
                            Button(action:{}) {
                                Image(systemName: "star")
                                Text("Star")
                               
                            }     .fontWeight(.regular)
                                .frame(width: 330,height: 20)
                                .font(.title3)
                                .foregroundColor(.white.opacity(0.8))
                                .padding()
                                .background(Color.white.opacity(0.1))
                                .cornerRadius(10)
                                .padding(10)
                            
                            Spacer()
                        }
                    }
                }
            }
        }}}
#Preview {
    ExeploreView()
}
