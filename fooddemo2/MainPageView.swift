//
//  MainPageView.swift
//  fooddemo2
//
//  Created by kenny on 2021/11/26.
//

import SwiftUI

struct MainPageView: View {
    var body: some View {
        TabView{
            LogoList()
                .tabItem{
                    Label("餐廳", systemImage:"fork.knife.circle")
                }
            ChooseIcon()
                .tabItem{
                    Label("顯示", systemImage:"display")
                }
        }
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
