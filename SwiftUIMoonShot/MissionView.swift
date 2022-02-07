//
//  MissionView.swift
//  SwiftUIMoonShot
//
//  Created by Richard Price on 07/02/2022.
//

import SwiftUI

struct MissionView: View {
    let mission: Mission
    
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 0.6)
                        .padding(.top)
                    
                    VStack(alignment: .leading) {
                        Text("Missions Highlights")
                            .font(.title.bold())
                            .padding(.bottom, 5)
                        
                        Text(mission.description)
                    }
                    .padding(.horizontal)
                }
            }
            .navigationTitle(mission.displayName)
            .navigationBarTitleDisplayMode(.inline)
            .background(.darkBackground)
        }
    }
}

struct MissionView_Previews: PreviewProvider {
    static var previews: some View {
        let mission: [Mission] = Bundle.main.decode("missions.json")
        MissionView(mission: mission[0])
            .preferredColorScheme(.dark)
    }
}
