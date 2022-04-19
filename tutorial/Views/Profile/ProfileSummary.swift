//
//  ProfileSummary.swift
//  tutorial
//
//  Created by Feng Yuan Yap on 2022/04/17.
//

import SwiftUI

struct ProfileSummary: View {
  @EnvironmentObject var modelData: ModelData
  var profile: Profile
  
  var body: some View {
    ScrollView {
      VStack(alignment: .leading, spacing: 10) {
        Text(profile.username)
          .bold()
          .font(.title)
        
        Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
        Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
        Text("Goal Date: ") + Text(profile.goalDate, style: .date)
        
        Divider()
        
        VStack(alignment: .leading) {
          sectionName(name: "Completed Badges")
          
          ScrollView(.horizontal) {
            HStack {
              HikeBadge(name: "First Hike")
              HikeBadge(name: "Earth Day")
                .hueRotation(Angle(degrees: 90))
              HikeBadge(name: "Tenth Hike")
                .grayscale(0.5)
                .hueRotation(Angle(degrees: 45))
            }
          }
        }
        
        Divider()
        
        VStack(alignment: .leading) {
          sectionName(name: "Recent Hikes")
          HikeView(hike: modelData.hikes[0])
        }
      }
    }
  }
  
  func sectionName(name: String) -> Text {
    return Text(name)
      .bold()
      .font(.headline)
  }
}

struct ProfileSummary_Previews: PreviewProvider {
  static var previews: some View {
    ProfileSummary(profile: Profile.default)
      .environmentObject(ModelData())
  }
}
