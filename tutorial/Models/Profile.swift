//
//  Profile.swift
//  tutorial
//
//  Created by Feng Yuan Yap on 2022/04/17.
//

import Foundation

struct Profile {
  var username: String
  var prefersNotifications = true
  var seasonalPhoto = Season.winter
  var goalDate = Date()

  static let `default` = Profile(username: "gen")

  enum Season: String, CaseIterable, Identifiable {
    case spring = "🌷"
    case summer = "🌞"
    case autumn = "🍂"
    case winter = "☃️"

    var id: String { rawValue }
  }
}
