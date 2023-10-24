//
//  HomeView.swift
//  GitHub
//
//  Created by ghada Mohammad on 09/04/1445 AH.
//

import SwiftUI

struct HomeView: View {
    @State private var name: String = ""
    var body: some View {
        ZStack{
            Color.black
            
                .ignoresSafeArea(.all)
            
            ScrollView{
                Text("Home")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.trailing,230)
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
                        Text("My Work")
                        
                            .font(.title)
                            .foregroundStyle(.white)
                        Spacer()
                        Image(systemName: "ellipsis")
                            .resizable()
                            .frame(width: 20,height: 4)
                            .foregroundColor(.gray)
                        
                    }.padding()
                    
                    VStack{
                        HStack{
                            Image(systemName:"record.circle")
                                .resizable()
                                .frame(width: 18,height: 18)
                                .foregroundColor(.white)
                                .padding(8)
                                .background(.green)
                                .cornerRadius(4)
                                .padding(4)
                            Text("Issues")
                                .foregroundColor(.white.opacity(0.8))
                            Spacer()
                            Image(systemName:"chevron.right")
                                .resizable()
                                .frame(width:8,height: 12)
                                .foregroundColor(.gray)
                            
                            
                        }
                        Divider()
                        
                        HStack{
                            Image(systemName: "point.bottomleft.forward.to.arrowtriangle.uturn.scurvepath")
                                .resizable()
                                .frame(width: 18,height: 18)
                                .foregroundColor(.white)
                                .padding(8)
                                .background(.blue)
                                .cornerRadius(4)
                                .padding(4)
                            
                            Text("Pull Requests")
                                .foregroundColor(.white.opacity(0.8))
                            Spacer()
                            Image(systemName:"chevron.right")
                                .resizable()
                                .frame(width:8,height: 12)
                                .foregroundColor(.gray)
                            
                        }
                        Divider()
                        HStack{
                            Image(systemName: "bubble.left.and.bubble.right")
                                .resizable()
                                .frame(width: 18,height: 18)
                                .foregroundColor(.white)
                                .padding(8)
                                .background(.purple)
                                .cornerRadius(4)
                                .padding(4)
                            
                            Text("Discussion")
                                .foregroundColor(.white.opacity(0.8))
                            Spacer()
                            Image(systemName:"chevron.right")
                                .resizable()
                                .frame(width:8,height: 12)
                                .foregroundColor(.gray)
                            
                        }
                        Divider()
                        HStack{
                            Image(systemName: "square.split.bottomrightquarter")
                                .resizable()
                                .frame(width: 18,height: 18)
                                .foregroundColor(.white)
                                .padding(8)
                                .background(.white.opacity(0.7))
                                .cornerRadius(4)
                                .padding(4)
                            
                            Text("Projects")
                                .foregroundColor(.white.opacity(0.8))
                            Spacer()
                            Image(systemName:"chevron.right")
                                .resizable()
                                .frame(width:8,height: 12)
                                .foregroundColor(.gray)
                            
                        }
                        Divider()
                        HStack{
                            Image(systemName: "book.closed")
                                .resizable()
                                .frame(width: 18,height: 18)
                                .foregroundColor(.white)
                                .padding(8)
                                .background(.gray)
                                .cornerRadius(4)
                                .padding(4)
                            
                            Text("Repositories")
                                .foregroundColor(.white.opacity(0.8))
                            Spacer()
                            Image(systemName:"chevron.right")
                                .resizable()
                                .frame(width:8,height: 12)
                                .foregroundColor(.gray)
                            
                        }
                        Divider()
                        HStack{
                            Image(systemName: "building.2")
                                .resizable()
                                .frame(width: 18,height: 18)
                                .foregroundColor(.white)
                                .padding(8)
                                .background(.orange)
                                .cornerRadius(4)
                                .padding(4)
                            
                            Text("Organization")
                                .foregroundColor(.white.opacity(0.8))
                            Spacer()
                            Image(systemName:"chevron.right")
                                .resizable()
                                .frame(width:8,height: 12)
                                .foregroundColor(.gray)
                            
                        }
                        Divider()
                        HStack{
                            Image(systemName: "star")
                                .resizable()
                                .frame(width: 18,height: 18)
                                .foregroundColor(.white)
                                .padding(8)
                                .background(.yellow)
                                .cornerRadius(4)
                                .padding(4)
                            Text("starred")
                                .foregroundColor(.white)
                                .foregroundColor(.white.opacity(0.8))
                            Spacer()
                            Image(systemName:"chevron.right")
                                .resizable()
                                .frame(width:8,height: 12)
                                .foregroundColor(.gray)
                            
                        }
                        
                    }
                    .padding()
                    .background(
                        
                        RoundedRectangle(
                            
                            cornerRadius: 15,
                            style: .continuous
                        )
                        .fill(.white.opacity(0.1))
                        
                        
                    )
                    HStack{
                        Text("Favorites")
                        
                            .font(.title)
                            .foregroundStyle(.white)
                        Spacer()
                        Image(systemName: "ellipsis")
                            .resizable()
                            .frame(width: 20,height: 4)
                            .foregroundColor(.gray)
                        
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white.opacity(0.1))
                            .padding(.horizontal)
                            .frame( height: 220 )
                        
                        VStack{
                            Text("Add favorite repositories here to have quick access at any time, without having to search")
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                                .padding(.top)
                            
                            Button(action:{}) {
                                Text("Add Favorite")
                                    .fontWeight(.regular)
                                    .frame(width: 300,height: 20)
                                    .font(.title3)
                                    .foregroundColor(.blue)
                                    .padding()
                                    .background(Color.white.opacity(0.2))
                                    .cornerRadius(10)
                                    .padding(30)
                            }
                            
                        }
                        
                    }
                    HStack{
                        Text("Shorcuts")
                        
                            .font(.title)
                            .foregroundStyle(.white)
                        Spacer()
                        Image(systemName: "ellipsis")
                            .resizable()
                            .frame(width: 20,height: 4)
                            .foregroundColor(.gray)
                        
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white.opacity(0.1))
                            .padding(.horizontal)
                            .frame( height: 300 )
                        
                        VStack{
                            
                            ZStack{
                                HStack(spacing: -15){
                                    Image(systemName: "bolt")
                                        .resizable()
                                        .frame(width: 18,height: 18)
                                        .foregroundColor(.white.opacity(0.5))
                                        .padding(8)
                                        .background(.gray.opacity(0.3))
                                        .cornerRadius(50)
                                        .padding(4)
                                    
                                    
                                    Image(systemName: "record.circle")
                                        .resizable()
                                        .frame(width: 18,height: 18)
                                        .foregroundColor(.green.opacity(0.7))
                                        .padding(8)
                                        .background(.green.opacity(0.3))
                                        .cornerRadius(50)
                                        .padding(4)
                                    Image(systemName: "point.bottomleft.forward.to.arrowtriangle.uturn.scurvepath")
                                        .resizable()
                                        .frame(width: 18,height: 18)
                                        .foregroundColor(.blue.opacity(0.7))
                                        .padding(8)
                                        .background(.blue.opacity(0.3))
                                        .cornerRadius(50)
                                        .padding(4)
                                    Image(systemName: "bubble.left.and.bubble.right")
                                        .resizable()
                                        .frame(width: 18,height: 18)
                                        .foregroundColor(.purple.opacity(0.7))
                                        .padding(8)
                                        .background(.purple.opacity(0.3))
                                        .cornerRadius(50)
                                        .padding(4)
                                    Image(systemName: "building.2")
                                        .resizable()
                                        .frame(width: 18,height: 18)
                                        .foregroundColor(.orange.opacity(0.7))
                                        .padding(8)
                                        .background(.orange.opacity(0.3))
                                        .cornerRadius(50)
                                        .padding(4)
                                    Image(systemName: "person.2")
                                        .resizable()
                                        .frame(width: 18,height: 18)
                                        .foregroundColor(.red.opacity(0.7))
                                        .padding(8)
                                        .background(.red.opacity(0.3))
                                        .cornerRadius(50)
                                        .padding(4)
                                    Image(systemName: "bag")
                                        .resizable()
                                        .frame(width: 18,height: 18)
                                        .foregroundColor(.purple.opacity(0.7))
                                        .padding(8)
                                        .background(.purple.opacity(0.3))
                                        .cornerRadius(50)
                                        .padding(4)
                                    Image(systemName: "plus.rectangle.portrait.fill")
                                        .resizable()
                                        .frame(width: 18,height: 18)
                                        .foregroundColor(.gray)
                                        .padding(8)
                                        .background(.gray.opacity(0.3))
                                        .cornerRadius(50)
                                        .padding(4)
                                }
                                
                            }
                            Text("The things you need,one tap away")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                            
                            Text("Add favorite repositories here to have quick access at any time, without having to search")
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                                .padding(.top)
                            
                            Button(action:{}) {
                                Text("Get started")
                                    .fontWeight(.regular)
                                    .frame(width: 300,height: 20)
                                    .font(.title3)
                                    .foregroundColor(.blue)
                                    .padding()
                                    .background(Color.white.opacity(0.2))
                                    .cornerRadius(10)
                                    .padding(20)
                            }
                            
                        }
                        
                    }
                    HStack{
                        Text("Recent")
                        
                            .font(.title)
                            .foregroundStyle(.white)
                        Spacer()
                        Image(systemName: "ellipsis")
                            .resizable()
                            .frame(width: 20,height: 4)
                            .foregroundColor(.gray)
                        
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white.opacity(0.1))
                            .padding(.horizontal)
                            .frame( height: 100 )
                        
                        VStack{
                            
                          
                            
                            Text("Issues and Pull Requests that you've interacted with recently will appear here")
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .padding(20)
                               
                            
                          
                            
                        }
                    }
                    
                }
                Spacer()
            }
            
            
        }
    }}
#Preview {
    HomeView()
}
