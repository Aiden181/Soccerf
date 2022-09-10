//
//  WelcomeView.swift
//  Soccerf
//
//  Created by Aiden Ly on 02/08/2022.
//

import SwiftUI

struct WelcomeView: View {
    @State var isActive: Bool = true
    var body: some View {
        if isActive{
            GreetingView(active: $isActive)
        }else{
            TeamListView()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
