//
//  AwardsView.swift
//  HW3.6
//
//  Created by Dmitry on 17.06.2021.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    GradientRec(width: 250, height: 250)
                    PathView(width: 250, height: 250)
                    CurvesView(width: 250, height: 250)
                    RabbitView(width: 200, height: 200)
                }
                .frame(maxWidth: .infinity)
            }
            .navigationBarTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
