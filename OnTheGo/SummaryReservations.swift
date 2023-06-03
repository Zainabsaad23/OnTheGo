//
//  SummaryReservations.swift
//  OnTheGo
//
//  Created by zainab saad alsayed on 09/11/1444 AH.
//

import SwiftUI

struct SummaryReservations: View {
    @State var isActive: Bool = false
    @State var countity = 0
    let id: String = UUID().uuidString
    let image: String
    let NameOfItem: String
    let price: String

    @State private var didTap9:Bool = false

    var body: some View {
       
        ZStack{
            VStack {
                Text("Summary Reservations")
                    .bold()
                
                
                Divider()
                Spacer()
                
                ZStack{ RoundedRectangle(cornerRadius: 17)
                        .frame(width: 348.0, height: 470.0)
                        .foregroundColor(Color.white)
                        .aspectRatio(contentMode: .fill)
                    
                    VStack{
                        
                        HStack{
                            Spacer()
                            Image("")
                            
                                .resizable()
                                .frame(width: 45, height: 45)
                                .foregroundColor(.white)
                                .background(Color.gray)
                                .clipShape(Circle())
                                .padding(10)
                            
                    
                            HStack{
                                Text("NameOfDissh")
                                    .bold()
                                   
                                ZStack{
                                    Button(action:{}){
                                        Text("\(countity)")
                                            .foregroundColor(.black)
                                            .font(.title3)
                                        
                                    }
                                    .frame(width: 117, height: 32)
                                    .background(Color("background"))                          .cornerRadius(8)
                                    
                                    
                                    HStack{
                                        Button(action:{countity = countity - 1}){
                                            Text("-")
                                                .foregroundColor(.white)
                                                .bold()
                                                .font(.title2)
                                            
                                        }
                                        .frame(width: 37, height: 28)
                                        .background(Color.orange)                                .cornerRadius(8)
                                        .padding()
                                        
                                       
                                        //
                                        Button(action:{countity = countity + 1}){
                                            Text("+")
                                                .foregroundColor(.white)
                                                .bold()
                                                .font(.title2)
                                            
                                        }
                                        .frame(width: 37, height: 28)
                                        .background(Color.orange)                            .cornerRadius(8)
                                        .padding()
                                        
                                    }.padding()
                                   
                                }
                                
                            }
                        }
                        
                        
                        
                        Text("Reservations Detalis:").foregroundColor(Color("blueGreen")).bold()
                            .font(.system(size: 17))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading,20)
                        
                            .padding()
                        Text("informationDetailsIsHere")
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading,20)
                        
                        Text("Have special request?").foregroundColor(Color("blueGreen")).bold()
                            .font(.system(size: 17))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading,40)
                        
                        
                        TextField("Your note:", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .frame(width: 302.0, height: 37.0)
                        
                            .textFieldStyle(.roundedBorder)
                            .padding(4)
                            .overlay(
                                RoundedRectangle(cornerRadius: 11)
                                    .stroke(Color("blueGreen"), lineWidth: 1)
                            )
                        
                    }
                    
                }
                
                Divider()
                HStack{
                    Text("VAT amount ")
                        .font(.system(size: 14))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,30)
                    
                    Text("S.R")
                        .padding()
                    
                }
                HStack{
                    Text("Total amount ")
                        .bold()
                        .font(.system(size: 17))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,30)
                    
                    Text("S.R")
                        .padding()
                }
                
                Spacer()
                HStack {
                    
                    Button(action:{self.didTap9 = true}){
                        Text("Split bill")
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 20))
                        
                    }
                    .frame(width: 126, height: 50)
                    .background(didTap9 ? Color("orange") : Color("blueGreen"))                                      .cornerRadius(8)
                    //                        //End Button
                    
                    
                    Button(action:{isActive = true}){
                        
                        Image(systemName: "apple.logo")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                        Text("Pay")
                            .bold()
                            .font(.system(size: 23))
                        
                            .foregroundColor(.white)
                    }
                    .frame(width: 126, height: 50)
                    .background(Color.black)
                    .cornerRadius(8)
                    
                    
                    
                    
                }
            }
            
            .background(Color("background"))
            if isActive {
                CustomDialog(isActive: $isActive, title: "Great All Done!", message: "Your Number Order", buttonTitle: "Go to home" ,NOorder: "") {
                    print("Pass to viewModel")
                }
            }
        }
    }
     
            
    }
        
    
    
    struct SummaryReservations_Previews: PreviewProvider {
        static var previews: some View {
            SummaryReservations(image: <#String#>, NameOfItem: <#String#>, price: <#String#>)
        }
    }

