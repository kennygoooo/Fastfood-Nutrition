//
//  ChooseIcon.swift
//  fooddemo2
//
//  Created by kenny on 2021/12/3.
//

import SwiftUI

struct ChooseIcon: View {
    var body: some View {
        HStack {
                    Button(action: {
                        UIApplication.shared.setAlternateIconName(nil)
                    }) {
                        Image("fries")
                            .resizable()
                            .scaledToFit()
                    }
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("Icon")
                    }) {
                        Image("hamburger")
                            .resizable()
                            .scaledToFit()
                    }
                }
                .frame(height: 200)
            }
        }

struct ChooseIcon_Previews: PreviewProvider {
    static var previews: some View {
        ChooseIcon()
    }
}
