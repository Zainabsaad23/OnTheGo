//
//  Test.swift
//  OnTheGo
//
//  Created by zainab saad alsayed on 12/11/1444 AH.
//

import SwiftUI

struct Test: View {
    @State private var datepic = Date()
    @State var selectedTime: Int = 1
    
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
                
                ScrollView(.horizontal){
                    
                    HStack{
                    ForEach(1...10, id: \.self){ i in
                            
                            Button {
                                selectedTime = i
                            } label: {
                                Text("\(i) AM")
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 73, height: 33)

                                    .background( i == selectedTime ? Color.orange :Color("blueGreen"))
                                    .cornerRadius(11)
                                
                            }
                            
                        }
                    }
                }.frame(width: 333, height: 96)
            }
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
