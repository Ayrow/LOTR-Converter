//
//  Currency.swift
//  LOTR-Converter
//
//  Created by Aymeric Pilaert on 12/01/2023.
//

enum Currency: Double, CaseIterable {
    case rock = 1320
    case copperPenny = 640
    case silverPenny = 64
    case silverPiece = 16
    case goldPenny = 4
    case goldPiece = 1
    
    func convert (amountString: String, to currency: Currency) -> String {
        guard let startAmount = Double(amountString) else {
            return ""
        }
        
        let convertedAmount = (startAmount / self.rawValue) * currency.rawValue
        
        if convertedAmount > 0 {
            return String(format: "%.2f", convertedAmount)
        } else {
            return ""
        }
    }
}

enum currencyText: String, CaseIterable {
    case rock = "rock"
    case copperPenny = "Copper Penny"
    case silverPenny = "Silver Penny"
    case silverPiece = "Silver Piece"
    case goldPenny = "Gold Penny"
    case goldPiece = "Gold Piece"
}

enum currencyImage: String, CaseIterable {
    case rock = "rock"
    case copperPenny = "copperpenny"
    case silverPenny = "silverpenny"
    case silverPiece = "silverpiece"
    case goldPenny = "goldpenny"
    case goldPiece = "goldpiece"
}
