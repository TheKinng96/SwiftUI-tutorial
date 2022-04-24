//
//  LandmarkDetail.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Feng Yuan Yap on 2022/04/23.
//

import SwiftUI

struct LandmarkDetail: View {
  @EnvironmentObject var modelData: ModelData
  var landmark: Landmark
  var landmarkIndex: Int {
    modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
  }

  var body: some View {
    ScrollView {
      VStack {
        CircleImageView(image: landmark.image.resizable())
          .scaledToFit()
        
        Text(landmark.name)
          .font(.headline)
          .lineLimit(0)
        
        Toggle(isOn: $modelData.landmarks[landmarkIndex].isFavorite) {
          Text("Favourite")
        }
        
        Divider()
        
        Text(landmark.park)
          .font(.caption)
          .bold()
          .lineLimit(0)

        Text(landmark.state)
          .font(.caption)
        
        Divider()

        MapView(coordinate: landmark.locationCoordinate)
          .scaledToFit()
      }
      .padding(16)
    }
    .navigationTitle("Landmarks")
    .foregroundColor(.white)
  }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
      let modelData = ModelData()
      return Group {
        LandmarkDetail(landmark: modelData.landmarks[0])
          .environmentObject(modelData)
          .previewDevice("Apple Watch Series 5 - 44mm")
        
        LandmarkDetail(landmark: modelData.landmarks[0])
          .environmentObject(modelData)
          .previewDevice("Apple Watch Series 5 - 40mm")
      }
    }
}
