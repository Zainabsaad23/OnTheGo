//
//  CustomDialog.swift
//  OnTheGo
//
//  Created by zainab saad alsayed on 12/11/1444 AH.
//

import SwiftUI


struct CustomDialog: View {
    @Binding var isActive: Bool

    let title: String
    let message: String
    let buttonTitle: String
    let NOorder : String

    let action: () -> ()
    @State private var offset: CGFloat = 1000

    var body: some View {
        ZStack {
            Color(.black)
                .opacity(0.5)
                .onTapGesture {
                    close()
                }


            VStack {
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
                
               
                Button {
                    action()
                    close()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.orange)

                        Text(buttonTitle)
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                            .padding()
                    }
                    .padding()
                }
            }
            .fixedSize(horizontal: false, vertical: true)
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(alignment: .topTrailing) {
                Button {
                    close()
                } label: {
                    Image(systemName: "xmark")
                        .frame(width: 32, height: 33)
                        .foregroundColor(.white)
                        .background(Color("blueGreen"))
                        .clipShape(Circle())
                }
                .tint(.black)
                .padding()
            }
            .shadow(radius: 20)
            .padding(30)
            .offset(x: 0, y: offset)
            .onAppear {
            withAnimation(.spring()) {
                    offset = 0
                }
            }
        }
        .ignoresSafeArea()
    }

    func close() {
        withAnimation(.spring()) {
            offset = 1000
            isActive = false
        }
    }
}

struct CustomDialog_Previews: PreviewProvider {
    static var previews: some View {
        CustomDialog(isActive: .constant(true), title: "Great All Done!", message: "Your Number Order", buttonTitle: "Go to Home", NOorder: "", action: {})
    }
}
