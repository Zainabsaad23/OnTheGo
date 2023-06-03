//
//  Stepper0.swift
//  OnTheGo
//
//  Created by zainab saad alsayed on 09/11/1444 AH.
//

import SwiftUI

struct Stepper0: View {
    @State private var numberguest = 0
    @State private var numberguest1 = 0
    @State var countityKids = 0
    @State var countityAdult = 0

    var body: some View {
        
            Text("Number of guste:").foregroundColor(Color("blueGreen"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .bold()
                .padding(.leading,20)
            
            
            ZStack{
                
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 356.0, height: 120.0)
                    .foregroundColor(Color.white)
                    .aspectRatio(contentMode: .fill)
                VStack{
                HStack{
                    Text("Adults")
                       
                    ZStack{
                        Button(action:{}){
                            Text("\(countityAdult)")
                                .foregroundColor(.black)
                                .font(.title3)
                            
                        }
                        .frame(width: 117, height: 32)
                        .background(Color("background"))                          .cornerRadius(8)
                        
                        
                        HStack{
                            Button(action:{countityAdult = countityAdult - 1}){
                                Text("-")
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(.title2)
                                
                            }
                            .frame(width: 37, height: 28)
                            .background(Color.orange)                                .cornerRadius(8)
                            .padding()
                            
                           
                            //
                            Button(action:{countityAdult = countityAdult + 1}){
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
                HStack{
                    Text("Kids")
                    ZStack{
                        Button(action:{}){
                            Text("\(countityKids)")
                                .foregroundColor(.black)
                                .font(.title3)
                            
                        }
                        .frame(width: 117, height: 32)
                        .background(Color("background"))                          .cornerRadius(8)
                        
                        
                        HStack{
                            
                            Button(action:{countityKids = countityKids - 1}){
                                Text("-")
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(.title2)
                                
                            }
                            .frame(width: 37, height: 28)
                            .background(Color.orange)                                .cornerRadius(8)
                            .padding()
                           
                            Button(action:{countityKids = countityKids + 1}){
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
        }
    }
            
        }
 

struct Stepper0_Previews: PreviewProvider {
    static var previews: some View {
        Stepper0()
    }
}
