//
//  GreetingView.swift
//  Soccerf
//
//  Created by Aiden Ly on 02/08/2022.
//

import SwiftUI

struct GreetingView: View {
    @Binding var active: Bool
    var body: some View {
        ZStack{
            Color("ThemeColor")
                .ignoresSafeArea(.all)
            VStack{
                Text("Soccerf")
                    .font(.system(size: 55))
                    .fontWeight(.heavy)
                Image(systemName: "sportscourt.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                    .offset(y: -20)
                Button{
                    active = false
                } label: {
                    Capsule().fill(.black.opacity(0.3))
                        .frame(width: 300, height: 65, alignment: .center)
                        .overlay(
                            HStack{
                                Text("Explore ")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                            }
                        )
                }
                .offset(y: 50)
            }
        }
    }
}
