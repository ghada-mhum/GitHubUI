//
//  ProfileView.swift
//  GitHub
//
//  Created by ghada Mohammad on 10/04/1445 AH.
//
/*
 let id  = UUID()
let title: String = ""
let row: Array<type any thing> = [type any thing(one = "" , Two = ""),one = "" , Two = "")]

hstack{
forEach(row){
detal in label (title :{
text(detel.title)
icone :{
image(detel.systemName)
.font
.ktha
}
*/
import SwiftUI
//struct RowData: Identifiable {
//    let id  = UUID()
//    var icon: String
//    var title: String
//    var subTitle: String
//}
struct RowData: Identifiable {
  let id = UUID()
  let title: String
    let Number: String
  let leadingImageName: String
  let leadingImageForegroundColor: Color = .white
  let leadingImageBackgroundColor: Color
}
struct ProfileView: View {
    
    let myWorkRows: Array<RowData> = [
        RowData(
            title: "Repositories",Number: "72",
            leadingImageName: "book.closed",
            leadingImageBackgroundColor: .gray
        ),
        RowData(
            title: "Starred",Number: "82",
            leadingImageName: "star",
            leadingImageBackgroundColor: .yellow
        ),
        RowData(
            title: "Organazation",Number: "11",
            leadingImageName: "building.2",
            leadingImageBackgroundColor: .orange
        ),]
    //    let row1: Array<RowData> = [
    //        RowData(
    //            icon: "building.2", title: "@safcsp", subTitle: ""
    //        ), RowData(
    //            icon: "mappin.and.ellipse", title: "Riyadh", subTitle: ""
    //        )
    //    ]
    //    let row2: Array<RowData> = [
    //        RowData(
    //            icon: "link", title: "lab.sa", subTitle: ""
    //        ), RowData(
    //            icon: "qrcode", title: "Developer Program Member", subTitle: ""
    //        )
    //    ]
    //    let row3: Array<RowData> = [
    //        RowData(
    //            icon: "", title: "12", subTitle: "followers ・"
    //
    //        ), RowData(
    //            icon: "", title: "12", subTitle: "following"
    //        )
    //    ]
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black
                    .ignoresSafeArea(.all)
                ScrollView{
                    VStack{
                        
                        HStack{
                            Image(systemName: "person")
                                .resizable()
                                .frame(width: 50,height: 50)
                                .padding()
                                .foregroundColor(.black)
                                .background(Color.white)
                                .cornerRadius(50)
                                .padding()
                            VStack(alignment: .leading){
                                Text("First + Last Name")
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                Text("user name")
                                    .font(.title3)
                                    .foregroundColor(.gray)
                                
                            }
                            Spacer()
                        }
                        
                        HStack{
                            Text("Description")
                                .foregroundColor(.white)
                                .font(.title3)
                                .padding()
                            Spacer()
                        }
                        
                        HStack{
                            HStack{
                                Image(systemName: "building.2")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.gray)
                                Text("@safcsp")
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .padding(.trailing)
                                
                            }
                            HStack{
                                Image(systemName: "mappin.and.ellipse")
                                    .resizable()
                                    .frame(width: 20,height: 20)                        .foregroundColor(.gray)
                                Text("Riyadh")
                                    .font(.title3)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                        }.padding(.vertical,2)
                        HStack{
                            HStack{
                                Image(systemName: "link")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.gray)
                                Text("lab.sa")
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .padding(.trailing)
                                
                            }
                            HStack{
                                Image(systemName: "qrcode")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.gray)
                                Text("Developer Program Member")
                                    .font(.body)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                        }.padding(.vertical,2)
                        HStack{
                            HStack{
                                Image(systemName: "person")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.gray)
                                Text("12")
                                    .font(.callout)
                                    .foregroundColor(.white)
                                
                                Text("Followers ・")
                                    .font(.callout)
                                    .foregroundColor(.gray)
                                
                                Text("12")
                                    .font(.callout)
                                    .foregroundColor(.white)
                                
                                Text("Following")
                                    .font(.callout)
                                    .foregroundColor(.gray)
                                
                                
                            }
                            
                            Spacer()
                        }
                        /*            hstack{
                         forEach(row){
                         detal in label (title :{
                         text(detel.title)
                         icone :{
                         image(detel.systemName)
                         .font
                         .ktha
                         }
                         */
                        
                        //                HStack{
                        //                    ForEach(row1) { info in
                        //                        Label(
                        //
                        //                            title: { Text(info.title)
                        //                                    .font(.title3)
                        //                                    .foregroundColor(.white)
                        //
                        //                            },
                        //                            icon: { Image(info.icon)
                        //
                        //                                    .foregroundColor(.gray)
                        //                            }
                        //
                        //                        )
                        //                    }
                        //                    Spacer()
                        //                }
                        //                    HStack{
                        //                        ForEach(row2) { info in
                        //                            Label(
                        //
                        //                                title: { Text(info.title)
                        //                                        .font(.title3)
                        //                                        .foregroundColor(.white)
                        //
                        //                                },
                        //                                icon: { Image(info.icon)
                        //                                        .foregroundColor(.gray)
                        //                                }
                        //                            )
                        //                        }
                        //
                        //                        Spacer()
                        //                    }
                        //
                        HStack{
                            Image(systemName: "accessibility")
                                .resizable()
                                .frame(width: 25,height: 25)
                                .foregroundColor(.gray)
                                .padding(.trailing)
                            ZStack{
                                Image("colors")
                                    .resizable()
                                    .frame(width: 40,height: 40)
                                    .cornerRadius(50)
                                    .offset(x: -30)
                                Image("orange")
                                    .resizable()
                                    .frame(width: 40,height: 40)
                                    .cornerRadius(50)
                                Image("blue")
                                    .resizable()
                                    .frame(width: 40,height: 40)
                                    .cornerRadius(50)
                                    .offset(x: 30)
                                
                            }.padding(.horizontal)
                            
                            Spacer()
                        }.padding()
                        
                        VStack{
                            NavigationLink(
                                destination: Text("Issues"),
                                label: {
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
                                })
                            
                            Divider()
                            NavigationLink(
                                destination: Text("Pull Requests"),
                                label: {
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
                                        
                                    }})
                            
                            Divider()
                            NavigationLink(
                                destination: Text("Discussion"),
                                label: {
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
                                        
                                    }})
                        }     .padding()
                            .background(
                                
                                RoundedRectangle(
                                    
                                    cornerRadius: 15,
                                    style: .continuous
                                )
                                .fill(.white.opacity(0.1))
                                
                                
                            )
                            //                            NavigationLink(
                            //                                destination: Text("RowData.title"),
                            //                                label: {
                            //                                    VStack {
                            //                                    ForEach(myWorkRows) { row in
                            //                                        makeRow(row: row)
                            //                                        if myWorkRows.last?.id != row.id {
                            //                                            Divider()
                            //                                            //                        .padding(.leading)
                            //                                        }
                            //                                    }
                            //                                }
                            //                                })
                            
                            //                        .padding(.vertical)
                            //                        .background(.gray.opacity(0.2))
                            //                        .frame(maxWidth: .infinity)
                            
                            //                .cornerRadius(8)
                            HStack{
                                Image(systemName: "pin")
                                    .foregroundColor(.gray)
                                
                                Text("Pinned")
                                    .foregroundColor(.gray)
                                Spacer()
                            }.padding(.top)
                            ZStack{
                                ScrollView(.horizontal){
                                    HStack{
                                        
                                        
                                        
                                        VStack{
                                            HStack{
                                                Image(systemName: "swift")
                                                    .resizable()
                                                    .frame(width: 25,height: 25)
                                                    .padding(5)
                                                    .background(.white)
                                                    .cornerRadius(5)
                                                    .padding(.leading)
                                                    .padding(.top)
                                                Text("swift-callbag")
                                                    .foregroundColor(.gray)
                                                    .padding(.top)
                                                Spacer()
                                            }
                                            HStack{
                                                Text("swift-kit")
                                                    .padding(.horizontal)
                                                    .padding(.top,3)
                                                    .foregroundColor(.white)
                                                    .font(.title3)
                                                
                                                Spacer()
                                            }
                                            HStack{
                                                Image(systemName: "bag.fill")
                                                    .resizable()
                                                    .frame(width: 20,height: 20)
                                                
                                                    .foregroundColor(.red)
                                                    .cornerRadius(5)
                                                    .padding(.leading)
                                                
                                                Text("fast reactive/itrable programming framework" )
                                                    .foregroundColor(.white)
                                                    .font(.callout)
                                                Spacer()
                                            }
                                            
                                            HStack{
                                                Image(systemName: "star")
                                                    .resizable()
                                                    .frame(width: 20,height: 20)
                                                
                                                    .foregroundColor(.gray)
                                                    .padding(.top)
                                                    .cornerRadius(5)
                                                    .padding(.leading)
                                                Text("2")
                                                    .foregroundColor(.gray)
                                                    .font(.title3)
                                                    .padding(.top)
                                                    .padding(.trailing)
                                                Image(systemName: "circle.fill")
                                                    .padding(.top)
                                                    .foregroundColor(.red)
                                                Text("swift")
                                                    .foregroundColor(.gray)
                                                    .padding(.top)
                                                Spacer()
                                            }
                                            Spacer()
                                        }
                                        .frame( width:380 ,height: 190 ) .background(.white.opacity(0.1))
                                        .padding(.horizontal,15)
                                        VStack{
                                            HStack{
                                                Image(systemName: "swift")
                                                    .resizable()
                                                    .frame(width: 25,height: 25)
                                                    .padding(5)
                                                    .background(.white)
                                                    .cornerRadius(5)
                                                    .padding(.leading)
                                                    .padding(.top)
                                                Text("swift-callbag")
                                                    .foregroundColor(.gray)
                                                    .padding(.top)
                                                Spacer()
                                            }
                                            HStack{
                                                Text("swift-kit")
                                                    .padding(.horizontal)
                                                    .padding(.top,3)
                                                    .foregroundColor(.white)
                                                    .font(.title3)
                                                
                                                Spacer()
                                            }
                                            HStack{
                                                Image(systemName: "bag.fill")
                                                    .resizable()
                                                    .frame(width: 20,height: 20)
                                                
                                                    .foregroundColor(.red)
                                                    .cornerRadius(5)
                                                    .padding(.leading)
                                                
                                                Text("fast reactive/itrable programming framework" )
                                                    .foregroundColor(.white)
                                                    .font(.callout)
                                                Spacer()
                                            }
                                            
                                            HStack{
                                                Image(systemName: "star")
                                                    .resizable()
                                                    .frame(width: 20,height: 20)
                                                
                                                    .foregroundColor(.gray)
                                                    .padding(.top)
                                                    .cornerRadius(5)
                                                    .padding(.leading)
                                                Text("2")
                                                    .foregroundColor(.gray)
                                                    .font(.title3)
                                                    .padding(.top)
                                                    .padding(.trailing)
                                                Image(systemName: "circle.fill")
                                                    .padding(.top)
                                                    .foregroundColor(.red)
                                                Text("swift")
                                                    .foregroundColor(.gray)
                                                    .padding(.top)
                                                Spacer()
                                            }
                                            Spacer()
                                        }
                                        .frame( width:380 ,height: 190 ) .background(.white.opacity(0.1))
                                        .padding(.horizontal,1)
                                        
                                        
                                        
                                    }
                                }
                                
                                
                                Spacer()
                            }
                            HStack{
                                Image(systemName: "info.circle")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .padding()
                                    .foregroundColor(.gray)
                                Text("username/README.md")
                                
                                    .font(.title3)
                                    .foregroundStyle(.gray)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .frame(width: 7,height: 10)
                                    .padding()
                                    .foregroundColor(.gray)
                                
                            }.padding(.top,30)
                            
                            
                            VStack{
                                HStack{
                                    Text("Hello World")
                                        .foregroundColor(.white)
                                        .padding()
                                    Spacer()
                                }
                                .frame( width:350 ,height: 100 ) .background(.white.opacity(0.1))
                                .cornerRadius(10)
                                .padding()
                                
                            }
                            .frame( width:380 ,height: 150 ) .background(.white.opacity(0.1))
                            .padding(.horizontal,1)
                            
                        }
                        
                        
                        
                    }} }}
    }
        func makeRow(row: RowData) -> some View {
            
            HStack {
                
                Image(systemName: row.leadingImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(row.leadingImageForegroundColor)
                    .padding(8)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(row.leadingImageBackgroundColor)
                    )
                Text(row.title)
                    .foregroundColor(.white)
                Spacer()
                Text(row.Number)
                    .foregroundColor(.gray)
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
        }
    

        
    

    //#Preview {
    //    ProfileView()
    //}
    
    struct ProfileView_Preview:PreviewProvider{
        static var previews: some View{
            ProfileView()
        }
    }

