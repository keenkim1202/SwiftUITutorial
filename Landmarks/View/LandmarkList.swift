//
//  LandmarkList.swift
//  Landmarks
//
//  Created by KEEN on 2021/12/08.
//

import SwiftUI

struct LandmarkList: View {
  @State private var showFavoriteOnly = false
  
  var filterdLandmarks: [Landmark] {
    landmarks.filter { landmark in
      (!showFavoriteOnly || landmark.isFavorite)
    }
  }
  
  var body: some View {
    NavigationView {
      List {
        Toggle(isOn: $showFavoriteOnly) {
          Text("Favorite Only")
        }
        
        ForEach(filterdLandmarks) { landmark in
          NavigationLink {
            LandmarkDetail(landmark: landmark)
          } label: {
            LandmarkRow(landmark: landmark)
          }
        }
        .navigationTitle("Landmarks")
      }
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkList()
  }
}
