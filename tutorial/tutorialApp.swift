//
//  tutorialApp.swift
//  tutorial
//
//  Created by Feng Yuan Yap on 2022/04/14.
//

import SwiftUI

@main
struct tutorialApp: App {
  @StateObject private var modelData = ModelData()
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(modelData)
    }
  }
}
