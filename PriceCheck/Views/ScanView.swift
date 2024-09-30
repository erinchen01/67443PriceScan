//
//  ScanView.swift
//  PriceCheck
//
//  Created by Xinyi Chen on 9/26/24.
//

import SwiftUI

struct ScanView: View {
    let scan: PriceScan

    var body: some View {
        VStack(alignment: .leading) {
            Text(scan.item)
                .font(.headline)
            Text("Price: $\(scan.price, specifier: "%.2f")")
//            Text("Date: \(scan./*date, formatter: itemFormatter)")*/
        }
    }
}

