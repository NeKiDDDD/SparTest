//
//  StarsView.swift
//  SparTest
//
//  Created by Nikita Kuznetsov on 02.02.2024.
//

import SwiftUI

struct StarsView: View {
    
    @State var rate: Int
    
    var body: some View {
        HStack (spacing: 0){
            ForEach(1...5, id: \.self) { star in
                if rate >= star {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                } else {
                    Image(systemName: "star")
                        .foregroundColor(.gray)
                }
            }
        }
    }
}

#Preview {
    StarsView(rate: 2)
}
