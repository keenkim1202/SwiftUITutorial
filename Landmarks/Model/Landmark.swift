//
//  Landmark.swift
//  Landmarks
//
//  Created by KEEN on 2021/12/08.
//

import Foundation
import SwiftUI
import CoreLocation

// Codable : data file과 구조체 사이의 데이터 이동을 쉽게 해주기 위해 사용한다.
// Codable의 Decodable 컴포넌트에 의존하여 file로부터 데이터를 읽어올 것.
struct Landmark: Hashable, Codable, Identifiable {
  var id: Int
  var name: String
  var park: String
  var state: String
  var description: String
  var isFavorite: Bool
  
  // 이미지 이름으로부터 이미지를 불러올 수 있도록 선언.
  private var imageName: String
  var image: Image {
    Image(imageName)
  }
  
  // 좌표 정포에 대한 모델 선언
  private var coordinates: Coordinates
  
  var locationCoordinate: CLLocationCoordinate2D {
    CLLocationCoordinate2D(
      latitude: coordinates.latitude,
      longitude: coordinates.longitude
    )
  }
  
  struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
  }
}
