//
//  ReviewView.swift
//  SparTest
//
//  Created by Nikita Kuznetsov on 02.02.2024.
//

import SwiftUI

struct ReviewView: View {
    let action: () -> Void
    let reviews: [ReviewsStruct]
    var body: some View {
        VStack {
            HStack {
                Text("Отзывы")
                    .bold()
                Spacer()
                UniversalGreenTextButton(action: action, name: "Все \(reviews.count)")
            }
            .padding(.horizontal, 30)
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(reviews, id: \.id) { review in
                        ReviewCell(review: review)
                            .padding()
                    }
                }
            }
            UniversalBorderedGreenTextButton(action: {}, name: "Оставить отзыв")
        }.padding(.horizontal)
    }
}

#Preview {
    ReviewView(action: {}, reviews: [firstReview,firstReview,firstReview])
}
