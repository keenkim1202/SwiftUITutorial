//
//  Landmark.swift
//  Landmarks
//
//  Created by KEEN on 2021/12/08.
//

import Foundation

// Codable : data file과 구조체 사이의 데이터 이동을 쉽게 해주기 위해 사용한다.
// Codable의 Decodable 컴포넌트에 의존하여 file로부터 데이터를 읽어올 것.
struct Landmark: Hashable, Codable {
  var id: Int
  var name: String
  var park: String
  var state: String
  var description: String
}
