//
//  INFORMATION.swift
//  OnTheGo
//
//  Created by zainab saad alsayed on 03/11/1444 AH.
//

import SwiftUI


struct Restaurant: Identifiable{
    

    let id: String = UUID().uuidString
    let image: String
    let name: String
    let subtitle: String
    //Menue [Meal]
}
//Meal{}
struct Restaurant0: View {
    @State private var didTap:Bool = false

    @State var restaurants : [Restaurant] = [
        .init(image: "shiro", name: "shiro", subtitle: "Japanese Restaurant"),
        .init(image: "aseeb", name: "aseeb", subtitle: "Najdi Restaurant"),
        .init(image: "sancarlo", name: "san carlo", subtitle: "Italian Restaurant"),
        .init(image: "meraki", name: "meraki", subtitle: "Greek Restaurant"),
        .init(image: "cicchetti", name: "cicchetti", subtitle: "Italian Restaurant")
    ]
    
    
    let names = ["shiro", "aseeb", "san carlo", "meraki", "cicchetti"]
    let subtitles = ["Japanese Restaurant", "Najdi Restaurant", "Italian Restaurant", "Greek Restaurant", "Italian Restaurant"]

    @State private var searchText = ""
    
    func ImagePress(){
        print("by")}
    
    @State private var didTap7:Bool = false
    
    var body: some View {
        
        NavigationStack {
            
            VStack{
                List {
                    ForEach(searchResults) { restaurant in
         
                        NavigationLink{
                            Text("hi")
                        }label:{
                            RerstaurantCellView(restaurant: restaurant)
                        }
                                                            }
                  
                    }
                Button(action:{self.didTap = true}){
                                       Text("Next")
                                          .fontWeight(.bold)
                                           .foregroundColor(.white)
                                    }
                                 .frame(width: 329, height: 50)
                                  .background(didTap ? Color("orange") : Color("blueGreen"))                      .cornerRadius(8)
                
                
                }
                .searchable(text: $searchText)
                
                .navigationTitle("Restaurant")
                
            }
        }
        var searchResults: [Restaurant] {
            if searchText.isEmpty {
                return restaurants
            } else {
                return restaurants.filter { $0.name.lowercased().contains(searchText.lowercased()) }
                
            }
        }
    }

    
    struct Restaurant0_Previews: PreviewProvider {
        static var previews: some View {
            Restaurant0()
        }
    }




struct RerstaurantCellView: View{
    let restaurant: Restaurant

    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 353.0, height: 189.0)
                .foregroundColor(Color.white)
                .aspectRatio(contentMode: .fill)
        
            VStack{
                Button ( action: {})
                {Image(restaurant.image)
                        .resizable()
                        //.scaledToFit()
                        .frame(width: 320.0, height: 121.0)
                        .aspectRatio(contentMode: .fit)
                        .border(Color("g"), width: 1)
                }
                Text(restaurant.name).font(.title3).fontWeight(.bold).foregroundColor(Color("blueGreen")).multilineTextAlignment(.center)
                Text(restaurant.subtitle).font(.caption).fontWeight(.thin).foregroundColor(Color("gray")).multilineTextAlignment(.center)
            }
        }
    }
}


//Struct
