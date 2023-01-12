//
//  ContentView.swift
//  LOTR-Converter
//
//  Created by Aymeric Pilaert on 12/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background Image
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                // Prancing pony image
                Image("prancingpony")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                // Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                // Currency conversion section
                HStack {
                    // Left conversion section
                    VStack {
                        // Currency
                        HStack {
                            // Currency Image
                            Image("silverpiece")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            // Currency text
                            Text("Silver piece")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        
                        // Text Field
                       Text("Text field")
                    }
                    
                    // Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    // Right conversion section
                    
                    VStack {
                        // Currency
                        HStack {
                        
                            // Currency text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundColor(.white)
                            
                            // Currency Image
                            Image("goldpiece")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        
                        // Text Field
                        Text("Text field")
                    }
                    
                }
                
                Spacer()
                
                // Info Button
                HStack {
                    Spacer()
                    
                    Button {
                        // Display exchange info screen
                    } label: {
                        Image(systemName: "info.circle.fill")
                        
                    }
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
