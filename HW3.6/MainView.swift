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
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.black, .blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            VStack {
                Button(action : buttonAction) {
                    HStack {
                        Text(showAward ? "Hide Award": "Show Award")
                        Spacer()
                        Image(systemName: "chevron.up.square")
                            .scaleEffect(showAward ? 2 : 1)
                            .rotationEffect(.degrees(showAward ? 0 : 180))
                    }
                    .foregroundColor(.yellow)
                }
                Spacer()
                
                if showAward {
                    RabbitView(width: 200, height: 200)
                        .transition(.transition)
                }
                
                Spacer()
            }
            .font(.headline)
            .padding()
        }
    }
    
    private func buttonAction() {
        withAnimation {
            showAward.toggle()
        }
    }
}

extension AnyTransition {
    static var transition: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
            .combined(with: .scale)
        
        let removal = AnyTransition.move(edge: .trailing)
            .combined(with: .slide)
        
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
