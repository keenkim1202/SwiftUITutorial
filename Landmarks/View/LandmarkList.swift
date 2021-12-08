//
//  LandmarkList.swift
//  Landmarks
//
//  Created by KEEN on 2021/12/08.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
      List(landmarks) { landmark in
        LandmarkRow(landmark: landmark)
      }
      .listStyle(.plain)
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
