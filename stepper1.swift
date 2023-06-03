//
//  stepper1.swift
//  OnTheGo
//
//  Created by zainab saad alsayed on 12/11/1444 AH.
//

import SwiftUI

struct stepper1: View {
    var body: some View {
        
        ZStack{
            Button(action:{}){
                Text("0")
                .foregroundColor(.black)
                .font(.title3)
                
            }
            .frame(width: 117, height: 32)
            .background(Color("background"))                          .cornerRadius(8)
            
            
            HStack{
                
                Button(action:{}){
                    Text("-")
                        .foregroundColor(.white)
                        .bold()
                        .font(.title2)
                    
                }
                .frame(width: 37, height: 28)
                .background(Color.orange)                                .cornerRadius(8)
                .padding()
                
//                Text("0")
//                .background(Color("g"))
//
                
                Button(action:{}){
                    Text("+")
                        .foregroundColor(.white)
                        .bold()
                        .font(.title2)
                    
                }
                .frame(width: 37, height: 28)
                .background(Color.orange)                            .cornerRadius(8)
                .padding()
            }
        }
    }
}

struct stepper1_Previews: PreviewProvider {
    static var previews: some View {
        stepper1()
    }
}
