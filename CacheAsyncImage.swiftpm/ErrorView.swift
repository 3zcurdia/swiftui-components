//
//  ErrorView.swift
//  CacheAsyncImage
//
//  Created by Luis Ezcurdia on 09/09/22.
//

import SwiftUI

struct ErrorView: View {
    let error: Error

    var body: some View {
        print(error)
        return Text("❌ **Error**").font(.system(size: 60))
    }
}
