//
//  CircleImageView.swift
//  tutorial
//
//  Created by Feng Yuan Yap on 2022/04/14.
//

import SwiftUI

struct CircleImageView: View {
  var image: Image
  var body: some View {
    image
      .clipShape(Circle())
      .overlay(
          Circle().stroke(.white, lineWidth: 4)
      )
      .shadow(radius: 7)
  }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
      CircleImageView(image: Image("Turtlerock"))
    }
}
