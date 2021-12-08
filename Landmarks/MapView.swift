//
//  MapView.swift
//  Landmarks
//
//  Created by KEEN on 2021/12/08.
//

import SwiftUI
import MapKit

struct MapView: View {
  // @State : 앱의 데이터의 진실성을 확립해주는 속성이다. 하나 이상의 뷰에서 수정이 가능하다. SwiftUI는 값에 의존하여 자동으로 뷰를 업데이트하고 저장한다.
  @State private var region = MKCoordinateRegion(
    center: CLLocationCoordinate2D(
      latitude: 34.011_286,
      longitude: -116.166_868
    ),
    span: MKCoordinateSpan(
      latitudeDelta: 0.2,
      longitudeDelta: 0.2
    )
  )
  
    var body: some View {
      // 상태 변수의 접두에 $를 붙여줌으로써, 값이 나타내는 레퍼런스가 누구인지 binding을 전달한다. 사용자가 map과 상호작용을 할 때, map은 ui상에서 현재 보이는 부분과 일치하는 region값 정보를 업데이트한다.
      Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
