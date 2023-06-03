//
//  Confirminfo.swift
//  OnTheGo
//
//  Created by zainab saad alsayed on 11/11/1444 AH.
//

import SwiftUI

struct Confirminfo: View {
    let title: String
    let message :String
    let NOorder : String
  
    
    
    var body: some View {
       
        ZStack{
            RoundedRectangle(cornerRadius: 17)
                .frame(width: 338.0, height: 350.0)
                .aspectRatio(contentMode: .fill)
            
        
              Image("confirm")
                .overlay {
            HStack{
                Spacer()
                    .overlay(alignment: .topTrailing) {
                        
                        Button {
                        }  label: {
                            Image(systemName: "xmark")
                                .frame(width: 32, height: 33)
                                .foregroundColor(.white)
                                .background(Color("blueGreen"))
                                .clipShape(Circle())
                            
                        }
                        
                    }
                }
            .ignoresSafeArea()

            }

            VStack{
                Text(title)
                    .foregroundColor(Color("blueGreen"))
                    .bold()
                    .font(.title2)
                    .padding()

                
                Image(systemName: "checkmark")
                    .resizable()
                   .frame(width: 146, height: 120)
                    .foregroundColor(.orange)
                
                
                Text(message)
                    .foregroundColor(Color("blueGreen"))
                    .bold()
                    .font(.title3)
                    .padding()
                
                Text(NOorder)
                    .foregroundColor(Color("orange"))
                    .bold()
                    .font(.title3)
            }
            
            
        }
        
    }
}


struct Confirminfo_Previews: PreviewProvider {
    static var previews: some View {
        Confirminfo(title: ("Great All Done!"), message: ("Your Number Order"),NOorder: "")
    }
}
