//
//  IconGrid.swift
//  LOTR-Converter
//
//  Created by Aymeric Pilaert on 13/01/2023.
//

import SwiftUI

struct IconGrid: View {
    @State var gridLayout = [GridItem(), GridItem(), GridItem()]
    @Binding var currency: Currency
    
    var body: some View {
        LazyVGrid(columns: gridLayout) {
            ForEach(0 ..< 5) { i in
                
                if Currency.allCases[i] == currency {
                    CurrencyIcon(currencyImage: currencyImage.allCases[i ].rawValue, currenctyText: currencyText.allCases[i].rawValue)
                        .overlay(RoundedRectangle(cornerRadius: 25)
                            .stroke(lineWidth: 3)
                            .opacity(0.5)
                        )
                        .shadow(color: .black, radius: 9)
                } else {
                    CurrencyIcon(currencyImage: currencyImage.allCases[i ].rawValue, currenctyText: currencyText.allCases[i].rawValue)
                        .onTapGesture {
                            currency = Currency.allCases[i]
                        }
                }
                
                
            }
        }
        .padding([.bottom, .leading, .trailing])
    }
}

struct IconGrid_Previews: PreviewProvider {
    static var previews: some View {
        IconGrid(currency: .constant(.silverPiece))
    }
}
