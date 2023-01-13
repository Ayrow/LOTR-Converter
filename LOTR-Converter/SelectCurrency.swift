//
//  SelectCurrency.swift
//  LOTR-Converter
//
//  Created by Aymeric Pilaert on 12/01/2023.
//

import SwiftUI

struct SelectCurrency: View {
    @State var gridLayout = [GridItem(), GridItem(), GridItem()]
    @Binding var leftCurrency: Currency
    @Binding var rightCurrency: Currency
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Image("parchment")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                LazyVGrid(columns: gridLayout) {
                    ForEach(0 ..< 5) { i in
                        
                        if Currency.allCases[i] == leftCurrency {
                            CurrencyIcon(currencyImage: currencyImage.allCases[i ].rawValue, currenctyText: currencyText.allCases[i].rawValue)
                                .overlay(RoundedRectangle(cornerRadius: 25)
                                    .stroke(lineWidth: 3)
                                    .opacity(0.5)
                                )
                                .shadow(color: .black, radius: 9)
                        } else {
                            CurrencyIcon(currencyImage: currencyImage.allCases[i ].rawValue, currenctyText: currencyText.allCases[i].rawValue)
                        }
                        
                        
                    }
                }
                
                
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Button("Done") {
                    dismiss()
                }
                .font(.largeTitle)
                .padding(10)
                .foregroundColor(.white)
                .background(.brown)
                .cornerRadius(15)
                
                
            }
        }
        .background(.brown)
    }
}

struct SelectCurrency_Previews: PreviewProvider {
    static var previews: some View {
        SelectCurrency(leftCurrency: .constant(.silverPiece), rightCurrency: .constant(.goldPiece))
    }
}
