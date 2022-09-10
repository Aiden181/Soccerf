//
//  TeamListView.swift
//  Soccerf
//
//  Created by Aiden Ly on 02/08/2022.
//

import SwiftUI

struct TeamListView: View {
//    var reputationStar: String
    
    var body: some View {
        NavigationView{
            List(teams) {team in
                NavigationLink{
                    TeamCard(team: team)
                } label: {
                    teamRowView(team: team)
                }
                .navigationBarHidden(true)
                .padding()
            }
        }
    }
}

struct TeamListView_Previews: PreviewProvider {
    static var previews: some View {
        TeamListView()
    }
}

//Team List View
extension TeamListView{
    private func teamRowView(team: Team) -> some View{
        HStack(spacing: 20){
            Image(team.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
            VStack(alignment: .leading){
                Text(team.name)
                    .font(.headline)
                Text("\(team.stadium), \(team.country)")
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}





