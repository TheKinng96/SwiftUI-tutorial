//
//  PageView.swift
//  tutorial
//
//  Created by Feng Yuan Yap on 2022/04/21.
//

import SwiftUI

struct PageView<Page: View>: View {
  var pages: [Page]
  @State private var currentPage = 1
  
  var body: some View {
    PageViewController(pages: pages, currentPage: $currentPage)
  }
}

struct PageView_Previews: PreviewProvider {
  static var previews: some View {
    PageView(pages: ModelData().features.map {
      FeatureCard(landmark: $0)
    })
    .aspectRatio(3/2, contentMode: .fit)
  }
}
