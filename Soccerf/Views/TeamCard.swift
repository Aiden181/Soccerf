//
//  TeamCard.swift
//  Soccerf
//
//  Created by Aiden Ly on 01/08/2022.
//

import SwiftUI

struct TeamCard: View {
    var team: Team
    @State var showTeamInfo: Bool = false
    
    var body: some View {
        ZStack{
            MapView(coordinate: team.locationCoordinate)
                .ignoresSafeArea()
            VStack(spacing: 0){
                header
                .padding()
                
                Spacer()
                
                if(showTeamInfo){
                    TeamInfoView(team: team)
                }
                Spacer()
            }

        }
    }
    
    //Expand Team Information
    func toggleTeamInfo(){
        withAnimation(.easeInOut(duration: 0.20)){
            showTeamInfo = !showTeamInfo
        }
    }
}

struct TeamCard_Previews: PreviewProvider {
    static var previews: some View {
        TeamCard(team: teams[0])
    }
}

extension TeamCard{
    private var header: some View{
        Button(action: toggleTeamInfo){
            VStack{
                Text(team.stadium + ", " + team.country)
                        .font(.title2)
                        .fontWeight(.black)
                        .foregroundColor(.black)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .overlay(alignment: .leading){
                            Image(systemName: "arrow.down")
                                .font(.headline)
                                .foregroundColor(.primary)
                                .padding()
                                .rotationEffect(Angle(degrees: showTeamInfo ? 180 : 0))
                        }
                        .navigationBarTitleDisplayMode(.inline)

            }
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 15)
    }
}
