//
//  ExchangeInfo.swift
//  LOTR-Converter
//
//  Created by Aymeric Pilaert on 12/01/2023.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack {
            // Background image
            Image("parchment")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                // Title
                Text("Exchange Rate")
                    .font(.largeTitle)
                
                // Info Text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                .font(.title2)
                
                ExchangeRate(leftImage: "goldpiece", text: "1 Gold Piece = 4 Gold Pennies", rightImage: "goldpenny")
                
                ExchangeRate(leftImage: "goldpiece", text: "1 Gold Piece = 4 Silver Pieces", rightImage: "silverpiece")
                
                ExchangeRate(leftImage: "silverpiece", text: "1 Silver Piece = 4 Silver Pennies", rightImage: "silverpenny")
                
                ExchangeRate(leftImage: "silverpenny", text: "1 Silver Penny = 100 Copper Pennies", rightImage: "copperpenny")
                
                // Button
            }
            
        }
    }
}

struct ExchangeInfo_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeInfo()
    }
}
