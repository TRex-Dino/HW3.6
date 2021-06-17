//
//  MainView.swift
//  HW3.6
//
//  Created by Dmitry on 17.06.2021.
//

import SwiftUI

struct MainView: View {
    @State private var showAward = false
    
    var body: some View {
        VStack {
            Button(action : buttonAction) {
                HStack {
                    Text(showAward ? "Hide Award": "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .rotationEffect(.degrees(showAward ? 0 : 180))
//                        .animation(.default)
                    
                }
            }
            Spacer()
            GradientRec(width: 250, height: 250)
                .offset(x: showAward ? 0 : -UIScreen.main.bounds.width)
//                .animation(Animation.spring())
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            showAward.toggle()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
