//
//  ModelData.swift
//  Landmarks
//
//  Created by KEEN on 2021/12/08.
//

import Foundation

// Create a load(_:) method that fetches JSON data with a given name from the app’s main bundle.
// load() : 앱의 main bundle로부터 주어진 이름으로 JSON 데이터를 가져온다.

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
