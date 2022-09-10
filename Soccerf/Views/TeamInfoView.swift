//
//  TeamInfoView.swift
//  Soccerf
//
//  Created by Aiden Ly on 02/08/2022.
//

import SwiftUI

struct TeamInfoView: View {
    var team: Team
    
    var body: some View {
        VStack{
            VStack{
                Image(team.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 170, height: 170)
                Text(team.name)
                    .font(.system(size: 35))
                    .bold()
                    .padding(.bottom, 0.2)
                Text("Reputation: \(reputationToStar(reputation:team.reputation))")
                    .font(.system(size: 30))
                Text("Description:")
                    .font(.system(size: 20))
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 1)
                    .padding(.horizontal)
                VStack(alignment: .leading, spacing: 10){
                    Text(team.description)
                        .lineLimit(8)
                        
                    if let url = URL(string: team.link){
                        Link("More information on Wikipedia", destination: url)
                            .foregroundColor(.blue)
                            .font(.headline)
                    }
                }
                .padding(.horizontal)
            }
            .padding()
            Spacer()
        }
        .frame(maxHeight: 650)
        .background(.thickMaterial)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 15)
        .padding()
    }
}

struct TeamInfoView_Previews: PreviewProvider {
    static var previews: some View {
        TeamInfoView(team: teams[5])
            .preferredColorScheme(.dark)
    }
}

//Convert Reputation Integer to Stars
func reputationToStar(reputation: Int) -> String{
    var reputationStar: String = ""
    for _ in 0..<reputation{
        reputationStar += "⭐️"
    }
    return reputationStar
}

