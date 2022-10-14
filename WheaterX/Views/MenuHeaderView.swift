//
//  MenuHeaderView.swift
//  WheaterX
//
//  Created by Fernando dos Santos Motta on 07/08/22.
//

import SwiftUI

struct MenuHeaderView: View {
    
    @ObservedObject var cityVM: CityViewModel
    @State private var searchTerm = "Sao Jose dos Campos"
    
    var body: some View {
        HStack {
            TextField("", text: $searchTerm)
                .padding(.leading, 20)
            
            Button {
                cityVM.city = searchTerm.replacingOccurrences(of: " ", with: "%20")
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(#colorLiteral(red: 0.02052830312, green: 0.4416744761, blue: 0.770498423, alpha: 1)))
                    
                    Image(systemName: "location.fill")
                }
            }
            .frame(width: 50, height: 50)
        }
        .foregroundColor(.white)
        .padding(.horizontal)
        .background(ZStack (alignment: .leading) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.white)
                .padding(.leading, 25)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(#colorLiteral(red: 0.03529411765, green: 0.5333333333, blue: 0.9176470588, alpha: 1)))
                .frame(width: .none, height: 50)
                .padding(.horizontal)
        })
    }
}

struct MenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
