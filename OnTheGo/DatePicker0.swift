//
//  DatePicker.swift
//  OnTheGo
//
//  Created by zainab saad alsayed on 09/11/1444 AH.
//

import SwiftUI

struct DatePicker0: View {
    @State var selectedTime: Int = 1
    @State private var datepic = Date()
 
    @State private var didTap:Bool = false
    @State private var didTap0:Bool = false
    @State private var didTap00:Bool = false
    @State private var didTap1:Bool = false
    @State private var didTap2:Bool = false
    @State private var didTap3:Bool = false
    @State private var didTap4:Bool = false
    @State private var didTap5:Bool = false
    @State private var didTap6:Bool = false
    var body: some View {
        Text("Pick and available time slot:").foregroundColor(Color("blueGreen")).bold()
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading,20)

       //
        ZStack{
            
            
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 356.0, height: 145.0)
                .foregroundColor(Color.white)
                .aspectRatio(contentMode: .fill)
            VStack{
                DatePicker("Please enter a date", selection: $datepic, in: Date()..., displayedComponents: .date)
                    .labelsHidden()
                //
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        
                        Button(action:{self.didTap1 = true}){
                            Text("10am")
                            .foregroundColor(.white)
                        }
                        .frame(width: 73, height: 33)
                        .background(didTap1 ? Color("orange") : Color("blueGreen"))                          .cornerRadius(11)
                        //End Button1
                        
                        
                    }
                    
                    
                    
                }.frame(width: 333, height: 96)
            }
        }
        }
    }


struct DatePicker0_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker0()
    }
}
