//
//  Compent_FleetManagerBasicCardView.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/28.
//

import SwiftUI

struct OperationBasicCardView : View {
    let BorderColor: Color
    var body: some View {
        ZStack{
                Rectangle()
                .frame(width: OperationCardViewData.cardViewWidth, height: OperationCardViewData.cardViewWidth, alignment: .center)
                    .foregroundColor(.clear)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(LinearGradient(colors: [BorderColor,BorderColor],
                                                       startPoint: .topLeading,
                                                       endPoint: .bottomTrailing),
                                        lineWidth: 2.8)
                                .frame(width: OperationCardViewData.cardViewWidth+2.0, height: OperationCardViewData.cardViewWidth+2.0, alignment: .center)
                                .shadow(color: BorderColor.opacity(0.6),
                                        radius: 1.8,
                                        x: 0.5,
                                        y: 0.5))
        }
    }
}

struct Compent_FleetManagerBasicCardView_Previews: PreviewProvider {
    static var previews: some View {
        OperationBasicCardView(BorderColor: .clear)
    }
}
