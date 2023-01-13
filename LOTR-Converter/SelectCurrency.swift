//
//  SelectCurrency.swift
//  LOTR-Converter
//
//  Created by Aymeric Pilaert on 12/01/2023.
//

import SwiftUI

struct SelectCurrency: View {
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
                
                    // currency
                IconGrid(currency: $leftCurrency)
                
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // currency icons
                IconGrid(currency: $rightCurrency)
                
                
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
