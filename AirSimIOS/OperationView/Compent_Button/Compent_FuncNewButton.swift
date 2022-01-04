//
//  Compent_FuncNewButtonView.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/31.
//

import SwiftUI

struct FuncNewButtonView: View {
    public var buttonText: String
    var body: some View {
        HStack{
            Image(systemName: "plus.app.fill")
                .foregroundColor(.primary)
                .scaleEffect(0.9)
            
            Text(buttonText)
                .font(.caption2)
                .foregroundColor(.primary)
                .padding(.horizontal, 1)
            
            Spacer()
                .frame(width: 5)
        }
        .padding(.vertical, 2)
        .padding(.horizontal, 2)
        .overlay(RoundedRectangle(cornerRadius: 5).strokeBorder().foregroundColor(.primary))    }
}

struct Compent_FuncNewButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FuncNewButtonView(buttonText: "New Group")
    }
}
