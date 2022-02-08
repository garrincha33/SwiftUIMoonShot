//
//  MissionImageView.swift
//  SwiftUIMoonShot
//
//  Created by Richard Price on 08/02/2022.
//

import SwiftUI

struct MissionImageView: View {
    let mission: Mission
    var body: some View {
        VStack {
            Image(mission.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()
            VStack {
                Text(mission.displayName)
                    .font(.headline)
                    .foregroundColor(.white)
                Text(mission.formattedLaunchDate)
                    .font(.caption)
                    .foregroundColor(.white).opacity(0.5)
            }
            .padding(.vertical)
            .frame(maxWidth: .infinity)
            .background(.lightBackground)
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.lightBackground))
    }
}

struct MissionImageView_Previews: PreviewProvider {
    
    static var previews: some View {
        let mission: [Mission] = Bundle.main.decode("missions.json")
        MissionImageView(mission: mission[0])
            .previewLayout(PreviewLayout.sizeThatFits)
            
        
    }
}
