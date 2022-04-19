//
//  ProfileHost.swift
//  tutorial
//
//  Created by Feng Yuan Yap on 2022/04/17.
//

import SwiftUI

struct ProfileHost: View {
  @Environment(\.editMode) var editMode
  @State private var draftProfile = Profile.default
  @EnvironmentObject var modelData: ModelData
  
  var body: some View {
    VStack {
      HStack {
        Spacer()
        EditButton()
      }
      if editMode?.wrappedValue == .inactive {
          ProfileSummary(profile: modelData.profile)
      } else {
          Text("Profile Editor")
      }
    }
    .padding()
  }
}

struct ProfileHost_Previews: PreviewProvider {
  static var previews: some View {
    ProfileHost()
      .environmentObject(ModelData())
  }
}
