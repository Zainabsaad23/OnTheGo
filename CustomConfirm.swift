//
//  CustomConfirm.swift
//  OnTheGo
//
//  Created by zainab saad alsayed on 11/11/1444 AH.
//

import SwiftUI

struct CustomConfirm: View {
    let title: String
    let message :String
    let buttonTitle: String
  
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 17)
                .frame(width: 338.0, height: 350.0)
                .aspectRatio(contentMode: .fill)
            Image("confirm")
          
            VStack{
                Text(title)
                    .foregroundColor(Color("blueGreen"))
                    .bold()
                    .font(.title2)
                    .padding()
                //
//                Image(systemName: "xmark")
//                    .frame(width: 32, height: 33)
//                    .foregroundColor(.white)
//                    .background(Color("blueGreen"))
//                    .clipShape(Circle())
//
//
                Image(systemName: "checkmark")
                    .resizable()
                   .frame(width: 172, height: 150)
                    .foregroundColor(.orange)
                

                Text(message)
                    .foregroundColor(Color("blueGreen"))
                    .font(.title3)
                    .padding()
            }
            
            
        }
        
    }
}

struct CustomConfirm_Previews: PreviewProvider {
    static var previews: some View {
        CustomConfirm(title: ("Great All Done!"), message: ("Your Number Order"), buttonTitle: ("String"))
    }
}
