//
//  ModelData.swift
//  Landmarks
//
//  Created by KEEN on 2021/12/08.
//

import Foundation
import Combine

// SwiftUI subscribes to your observable object, and updates any views that need refreshing when the data changes.
final class ModelData: ObservableObject {
  //  An observable object needs to publish any changes to its data, so that its subscribers can pick up the change.
  @Published var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T: Decodable>(_ filename: String) -> T {
  let data: Data
  
  // 파일이름 존재 여부 체크
  guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
    fatalError("ERROR - main bundle에서 \(filename)을 찾을 수 없습니다.")
  }
  
  // 파일 불러오기 성공 여부 체크
  do {
    data = try Data(contentsOf: file)
  } catch {
    fatalError("ERROR - main bundle에서 \(filename)을 불러올 수 없습니다 : \n\(error)")
  }
  
  // JSON 파싱 성공 여부 체크
  do {
    let decoder = JSONDecoder()
    return try decoder.decode(T.self, from: data)
  } catch {
    fatalError("ERROR - \(filename)을 \(T.self) 로 파싱할 수 없습니다. : \n\(error)")
  }
}
