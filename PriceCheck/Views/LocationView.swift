//
//  LocationView.swift
//  PriceCheck
//
//  Created by Xinyi Chen on 9/26/24.
//

import Foundation
import SwiftUI

struct LocationView: View {
  let location: Location

  var body: some View {
    Section(header: Text(location.name).font(.headline).textCase(.uppercase)) {
      ForEach(location.scans.sorted(by: { $0.item < $1.item })) { scan in
            HStack {
                VStack(alignment: .leading) {
                    Text(scan.item)
                        .font(.body)
                        .foregroundColor(.primary)
                }
                Spacer()
                Text(String(format: "$%.2f", scan.price))
                    .font(.body)
                    .fontWeight(.bold)
              }
          }
      }
  }

}

