//
//  ReviewCell.swift
//  SparTest
//
//  Created by Nikita Kuznetsov on 02.02.2024.
//

import SwiftUI

struct ReviewCell: View {
    let review: ReviewsStruct
    var body: some View {
        ZStack {
            VStack (alignment: .leading, spacing: 5){
                Text(review.name)
                    .bold()
                Text(formatDate(review.date))
                    .foregroundColor(.gray)
                StarsView(rate: review.rating)
                Text(review.description)
            }
            .frame(width: 250, height: 150)
            .background(Rectangle()
                .foregroundColor(.white)
                .frame(width: 250, height: 150)
                .cornerRadius(20)
                .shadow(radius: 3))
        }
    }
    func formatDate(_ date: Date) -> String {
            let formatter = DateFormatter()
            formatter.dateFormat = "dd MMMM yyyy"
            formatter.locale = Locale(identifier: "ru_RU")
            return formatter.string(from: date)
        }
}

#Preview {
    ReviewCell(review: firstReview)
}
