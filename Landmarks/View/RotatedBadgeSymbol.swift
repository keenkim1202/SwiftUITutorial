//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by KEEN on 2021/12/08.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
  let angle: Angle
  
  var body: some View {
    BadgeSymbol()
      .padding(-60)
      .rotationEffect(angle, anchor: .bottom)
  }
}

struct RotatedBadgeSymbolPreviews: PreviewProvider {
  static var previews: some View {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
  }
}
