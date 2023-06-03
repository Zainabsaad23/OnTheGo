//
//  ContentView.swift
//  OnTheGo
//
//  Created by zainab saad alsayed on 03/11/1444 AH.
//

import SwiftUI

struct informa: View {
  

    @State var choiseMade = "Branch:"
   @State private var didTap:Bool = false
    @State private var didTap0:Bool = false
    @State private var didTap00:Bool = false


    
    var body: some View {
        
        VStack() {
            Text("Reservations")
                .bold()
//                .padding(.leading,80)
            Divider()
            Spacer()
            
            VStack() {
                
         
                
                Text("Name:").foregroundColor(Color("blueGreen")).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading,20)
                TextField("Your Name:", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .textFieldStyle(.roundedBorder)
                .padding()
                //
                Test()
                //
                //
                //
                
                
                //
                
                Text("Table blace:").foregroundColor(Color("blueGreen"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .bold()
                    .padding(.leading,20)

                
                
                ZStack{
                    
                    
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 353.0, height: 68.0)
                        .foregroundColor(Color.white)
                        .aspectRatio(contentMode: .fill)
                    
                    HStack {
                        
                        Button(action:{self.didTap0 = true}){
                            Text("Outdoor")
                                .foregroundColor(.white)
                        }
                        .frame(width: 73, height: 33)
                        .background(didTap0 ? Color("orange") : Color("blueGreen"))                        .cornerRadius(11)
                        //                        //End Button
                        
                        
                        Button(action:{                                self.didTap00 = true}){
                            Text("Indoor")
                                .foregroundColor(.white)
                        }
                        .frame(width: 73, height: 33)
                        .background(didTap00 ? Color("orange") : Color("blueGreen"))
                        .cornerRadius(11)
                        
                        
                    }
                    
                }
                //
                Stepper0()
                //
                
                
                //
                
                Text("Branch").foregroundColor(Color("blueGreen"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .bold()
                    .padding(.leading,20)

                Menu {
                    Button(action: {choiseMade = "Riyadh,Front Riyadh"},label: { Text ("Riyadh,Front Riyadh")
                        
                    })
                    Button(action: {choiseMade = "Riyadh,Centria mall"},label: { Text ("Riyadh,Centria mall")
                        
                    })
                    Button(action: {choiseMade = "Riyadh,Diafh plaza"},label: { Text ("Riyadh,Diafh plaza")
                        
                    })
                    //
                }
                
                
            label: {
                
                HStack{
                    Text("$choiseMade")
                        .bold()
                    Spacer()
                    Image(systemName: "chevron.down")
                        .bold()
                        
                }
                .padding()
                
//
            }.foregroundColor(Color("blueGreen"))
                    .background(Color.white)
                    .cornerRadius(8)

                    .padding()
                
                
                //                    //
                Button(action:{self.didTap = true}){
                    Text("SAVE")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                .frame(width: 329, height: 50)
                .background(didTap ? Color("orange") : Color("blueGreen"))                      .cornerRadius(8)
                
                
            }                }
            
                .background{
                    Color("background")
                        .ignoresSafeArea()
                }
            Spacer()
            
        }

        
        }
    

struct informa_Previews: PreviewProvider {
    static var previews: some View {
        informa()
    }
}
