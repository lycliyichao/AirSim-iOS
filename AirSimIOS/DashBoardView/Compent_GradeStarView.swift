//
//  Compent_GradeStarView.swift
//  AirSimIOS
//
//  Created by YICHAO LI on 2021/12/27.
//

import SwiftUI

//🌟
struct ScrollDashBoardGradeStarView: View {
    let StarNum : Int
    var body: some View {
        HStack{
            ForEach(0..<StarNum){index in
                Image(systemName: "star.fill")
                    .padding(.horizontal, 0)
                    .padding(.vertical, 1)
            }
            if StarNum < 5{
                ForEach(StarNum..<5){index in
                    Image(systemName: "star")
                        .padding(.horizontal, 0)
                        .padding(.vertical, 1)
                }
            }
        }
        .padding(.horizontal)
    }
}

struct Compent_GradeStarView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollDashBoardGradeStarView(StarNum: 3)
    }
}
