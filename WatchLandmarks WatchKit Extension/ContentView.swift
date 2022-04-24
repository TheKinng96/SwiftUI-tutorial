//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Feng Yuan Yap on 2022/04/23.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    LandmarkList()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(ModelData())
  }
}
