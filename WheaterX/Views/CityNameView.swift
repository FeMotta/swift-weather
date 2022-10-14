//
//  CityNameView.swift
//  WheaterX
//
//  Created by Fernando dos Santos Motta on 08/08/22.
//

import SwiftUI

struct CityNameView: View {
    var city: String
    var date: String
    
    var body: some View {
        HStack {
            VStack(alignment: .center, spacing: 10) {
                Text(city.replacingOccurrences(of: "%20", with: " ").capitalized)
                    .font(.title)
                    .bold()
                    .padding(.top, 15)
                Text(date)
            }.foregroundColor(.white)
        }
    }
}

struct CityNameView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
